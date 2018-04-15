//
//  FHNavigationViewController.swift
//  SwiftDemo
//
//  Created by 夜站 on 2018/4/4.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit

class  FHNavigationViewController : UINavigationController {
    
    let naviBarView = UIView()
    
    override func viewDidLoad() {
//        self.navigationBar.isHidden = true
        
//        p_setupUI()
        self.navigationBar.isTranslucent = true
    }
    
    private func p_setupUI()  {
        self.view.addSubview(naviBarView)
        naviBarView.frame = CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH, height: NAVIGATIONBAR_HEIGHT)
    }
    
}
