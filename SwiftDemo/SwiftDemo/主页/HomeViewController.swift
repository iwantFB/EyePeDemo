//
//  HomeViewController.swift
//  SwiftDemo
//
//  Created by 夜站 on 2018/4/3.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit

class HomeViewController : UIViewController {

    var naviTopView : HomeNaviCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        p_setupUI()
    }
    
    func p_setupUI() {
        
        self.view.backgroundColor = UIColor.white
        
        let flowLayout = UICollectionViewFlowLayout.init()
        flowLayout.itemSize = CGSize.init(width: 60, height: 38)
        flowLayout.scrollDirection = .horizontal
        
        naviTopView = HomeNaviCollectionView.init(frame: CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH, height: 40), collectionViewLayout: flowLayout)
        naviTopView.showsHorizontalScrollIndicator = false
        naviTopView.backgroundColor = UIColor.red
        self.view.addSubview(naviTopView)
        
    }
    
}
