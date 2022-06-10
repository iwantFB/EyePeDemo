//
//  HomeCardBannerView.swift
//  SwiftDemo
//
//  Created by MacBook on 07/06/2022.
//  Copyright © 2022 DEMO. All rights reserved.
//

import Foundation
import UIKit
import FSPagerView

//主要负责滑动视图的显示
class HomeCardBannerView: UIView {

    //显示了解详情
//    let detailLabel = UILabel()
//    let indicatorView = UIImageView(image: UIImage(named: "et_banner_arrow_18x18_"))
    let banner = FSPagerView()
    
    var style:LayoutConfig
    
    
    required init(style: LayoutConfig) {
        self.style = style
        super.init(frame: .zero)
        
    }
    
    //MARK:
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        if superview != nil {
            self.snp.makeConstraints { make in
                make.edges.equalTo(style.insets)
            }
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
