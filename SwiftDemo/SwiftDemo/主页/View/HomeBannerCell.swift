//
//  HomeBannerCell.swift
//  SwiftDemo
//
//  Created by 夜站 on 2018/4/11.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit

class HomeBannerCell : HomeBaseCell {
    
    let bannerImageView = UIImageView.init();
    
    override var itemModel: HomeItemModel?{
        didSet{
            let imageStr = itemModel?.data?.image
            guard imageStr != nil else{return}
            bannerImageView.sd_setImage(with: URL.init(string: imageStr!), completed: nil)
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(bannerImageView)
        bannerImageView.layer.cornerRadius = 2
        bannerImageView.layer.masksToBounds = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
