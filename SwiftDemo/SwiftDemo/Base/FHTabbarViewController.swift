//
//  FHTabbarViewController.swift
//  SwiftDemo
//
//  Created by 夜站 on 2018/4/3.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit

class FHTabbar : UITabBar {
    

}

class FHTabbarViewController : UITabBarController {
    override func viewDidLoad() {
        
        let tabbar = FHTabbar.init(frame: self.tabBar.frame)
        self.setValue(tabbar, forKeyPath: "tabBar")
        
        let homeVC:HomeViewController = HomeViewController.init()
        let discoverVC:DiscoverViewController = DiscoverViewController.init()
        let notiVC:NotificationViewController = NotificationViewController.init()
        let mineVC:MineViewController = MineViewController.init()
        
        let vcs = NSArray.init(objects: homeVC,discoverVC,notiVC,mineVC) as! [UIViewController]
        let titles = NSArray.init(objects: "首页","关注","通知","我的") as![String]
        for i in 0...3 {
            configTabbarItem(vc: vcs[i], title: titles[i] as NSString)
        }
        
        let naviArr = NSMutableArray.init()
        for vc in vcs {
            let navi = FHNavigationViewController.init(rootViewController: vc)
            naviArr.add(navi)
        }
        self.viewControllers = (naviArr as! [UIViewController]);
    }
    
    private func configTabbarItem(vc:UIViewController ,title:NSString ) {
        vc.title = title as String;
    }
}
