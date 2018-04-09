//
//  HomeViewController.swift
//  SwiftDemo
//
//  Created by 夜站 on 2018/4/3.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit
import SnapKit


private let tabInfo = "tabInfo"
private let tabList = "tabList"

class HomeViewController : UIViewController{
    
    var naviTopView : HomeNaviCollectionView!
    let vcContentView = UIScrollView.init();

    override func viewDidLoad() {
        super.viewDidLoad()
        p_setupUI()
    }
    
    private func p_setupUI() {
        
        self.view.backgroundColor = UIColor.white
        
        let flowLayout = UICollectionViewFlowLayout.init()
        flowLayout.itemSize = CGSize.init(width: 60, height: 38)
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 0;
        
        naviTopView = HomeNaviCollectionView.init(frame: CGRect.init(x: 40, y: STATUSBAR_HEIGHT, width: SCREEN_WIDTH - 80.0, height: 40), collectionViewLayout: flowLayout)
//        (self.navigationController as! FHNavigationViewController).naviBarView.addSubview(naviTopView)
        self.navigationItem.titleView = naviTopView
        
        self.view.addSubview(vcContentView)
        vcContentView.contentSize = CGSize.init(width: SCREEN_WIDTH * 4, height: SCREEN_HEIGHT - TABBAR_HEIGHT - NAVIGATIONBAR_HEIGHT)
        vcContentView.isPagingEnabled = true
        vcContentView.snp.makeConstraints { (make) in
            make.edges.equalTo(self.view).inset(UIEdgeInsets.init(top: NAVIGATIONBAR_HEIGHT, left: 0, bottom: TABBAR_HEIGHT, right: 0))
        }
        
        getNetData()
    }
    
    //MARK- network
    private func getNetData()  {
        let urlStr = "https://baobab.kaiyanapp.com/api/v5/index/tab/list"
        NetworkTool.get(urlStr, parameters: nil) { (flag, json, cool) in
            
            let result:Dictionary<String,AnyObject> = json.dictionaryObject! as Dictionary<String,AnyObject>
            self.naviTopView.itemList = (result[tabInfo]![tabList])as!Array<Any>
            self.vcContentView.contentSize = CGSize.init(width: SCREEN_WIDTH * CGFloat(self.naviTopView.itemList.count), height: SCREEN_HEIGHT - TABBAR_HEIGHT - NAVIGATIONBAR_HEIGHT)
        }
    }
}
