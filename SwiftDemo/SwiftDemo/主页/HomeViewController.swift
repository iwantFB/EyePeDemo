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
    
    var naviTopView : HomeNaviCollectionView!
    let vcContentView = UIScrollView.init();
    var itemList: [NavList]? = Array<NavList>.init(){
        didSet{
            guard let itemList = itemList else { return }
            
            let count = itemList.count
            let vcHeight = SCREEN_HEIGHT - TABBAR_HEIGHT - NAVIGATIONBAR_HEIGHT
            vcContentView.contentSize = CGSize.init(width: SCREEN_WIDTH * CGFloat(count), height: vcHeight)
            for i in 0...itemList.count {
                let tableVC = HomeTableViewController.init()
                tableVC.willMove(toParentViewController: self)
                self.addChildViewController(tableVC)
                vcContentView.addSubview(tableVC.view)
                tableVC.view.frame = CGRect.init(x: CGFloat(i) * SCREEN_WIDTH, y: 0, width: SCREEN_WIDTH, height: vcHeight)
                tableVC.didMove(toParentViewController: self)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        getNetData()
        p_setupUI()
    }
    
    fileprivate func p_setupUI() {
        
        self.view.backgroundColor = UIColor.white
        
        naviTopView = HomeNaviCollectionView.init(frame: CGRect.init(x: 40, y: STATUSBAR_HEIGHT, width: SCREEN_WIDTH - 80.0, height: 40), collectionViewLayout: UICollectionViewFlowLayout.init())
        naviTopView.postValueBlock = { (index,apiUrl) in
            self.vcContentView.setContentOffset(CGPoint.init(x: CGFloat(index) * SCREEN_WIDTH, y: 0), animated: true)
            
            self.selectedUrl()
        }
        self.navigationItem.titleView = naviTopView
        
        self.view.addSubview(vcContentView)
        vcContentView.contentSize = CGSize.init(width: SCREEN_WIDTH * 4, height: SCREEN_HEIGHT - TABBAR_HEIGHT - NAVIGATIONBAR_HEIGHT)
        vcContentView.isPagingEnabled = true
        vcContentView.delegate = self
        vcContentView.snp.makeConstraints { (make) in
            make.edges.equalTo(self.view).inset(UIEdgeInsets.init(top: NAVIGATIONBAR_HEIGHT, left: 0, bottom: TABBAR_HEIGHT, right: 0))
        }
    }
    
    fileprivate func configNaviItem(_ item: NaviItem?) {
       
    }

    func selectedUrl(){

        let index = naviTopView.currentIndex
        let tableVC = self.childViewControllers[index] as! HomeTableViewController
        tableVC.url = naviTopView.currentUrl
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
        print("滑动 = \(naviTopView.currentUrl)")
        naviTopView.currentIndex = index
        selectedUrl()
    }
    
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        //获取url
        print("点击 = \(naviTopView.currentUrl)")
    }
}
