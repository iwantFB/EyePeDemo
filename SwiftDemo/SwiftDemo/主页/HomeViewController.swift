//
//  HomeViewController.swift
//  SwiftDemo
//
//  Created by 夜站 on 2018/4/3.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit
import SnapKit
import SwiftyJSON


fileprivate let tabInfo = "tabInfo"
fileprivate let tabList = "tabList"

class HomeViewController : UIViewController, UIScrollViewDelegate{
    
    var naviTopView = HomeNaviCollectionView.init(frame: CGRect.init(x: 40, y: STATUSBAR_HEIGHT, width: SCREEN_WIDTH - 80.0, height: 40), collectionViewLayout: UICollectionViewFlowLayout.init())
    let vcContentView = UIScrollView.init();
    var itemList: [NavList]? {
        didSet{
            guard let itemList = itemList else { return }
            
            let count = itemList.count
            let vcHeight = SCREEN_HEIGHT - TABBAR_HEIGHT - NAVIGATIONBAR_HEIGHT
            vcContentView.contentSize = CGSize.init(width: SCREEN_WIDTH * CGFloat(count), height: vcHeight)
            for i in 0..<count {
                let tableVC = HomeTableViewController.init()
                tableVC.willMove(toParentViewController: self)
                self.addChildViewController(tableVC)
                vcContentView.addSubview(tableVC.view)
                tableVC.view.frame = CGRect.init(x: CGFloat(i) * SCREEN_WIDTH, y: 0, width: SCREEN_WIDTH, height: vcHeight)
                tableVC.didMove(toParentViewController: self)
                
                if let shouldDisplay = itemList[i].defaultDisplay, shouldDisplay == true {

                    tableVC.url = itemList[i].url
                }
                
            }
            
            self.naviTopView.itemList = itemList
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        getNetData()
        p_setupUI()
    }
    
    fileprivate func p_setupUI() {
        
        self.view.backgroundColor = UIColor.white
        
        naviTopView.postValueBlock = { (index,apiUrl) in
            self.vcContentView.setContentOffset(CGPoint.init(x: CGFloat(index) * SCREEN_WIDTH, y: 0), animated: true)
            //将获取到的值更新到对应的控制器中
            guard index < self.childViewControllers.count,
                  let vc = self.childViewControllers[index]
                    as? HomeTableViewController else { return }
            vc.url = apiUrl
        }
        self.navigationItem.titleView = naviTopView
        
        self.view.addSubview(vcContentView)
        vcContentView.isPagingEnabled = true
        vcContentView.showsHorizontalScrollIndicator = false
        vcContentView.showsVerticalScrollIndicator = false
        vcContentView.delegate = self
        vcContentView.snp.makeConstraints { (make) in
            make.edges.equalTo(self.view).inset(UIEdgeInsets.init(top: NAVIGATIONBAR_HEIGHT, left: 0, bottom: TABBAR_HEIGHT, right: 0))
        }
    }
    
    fileprivate func configNaviItem(_ item: NaviItem?) {
        self.navigationItem.leftBarButtonItems = item?.left!.map{ $0.navItem }
        //TODO: 此处应该还有center的解析
        self.navigationItem.rightBarButtonItems = item?.right!.map{ $0.navItem }
    }
    
    //MARK:- network
    private func getNetData()  {

        let data = HOME_GET_NAV.data(using: .utf8)
        if let data = data {
            let result = try? JSONDecoder().decode(HomeNavi.self, from: data)
            
            //开始配置主页导航栏相关数据
            self.itemList = result?.navList
            self.configNaviItem(result?.navItem)
        }
    }
    
    //MARK:- scrollViewDelegate
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let offSetX = scrollView.contentOffset.x
        let index = Int(offSetX / SCREEN_WIDTH)
        naviTopView.currentIndex = index
    }
}
