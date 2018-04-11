//
//  HorizontalScrollCard.swift
//  SwiftDemo
//
//  Created by 胡斐 on 2018/4/11.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit

class HorizontalScrollCardCell : HomeBaseCell {
    
    let bannerImageView = UIImageView.init()
    
    override var itemModel: HomeItemModel?{
        didSet{
            guard itemModel?.data?.itemList?.first != nil else {
                return
            }
            let imageStr = itemModel?.data?.itemList?.first!.data?.image
            bannerImageView.sd_setImage(with: URL.init(string: imageStr!), completed: nil)
            bannerImageView.layer.cornerRadius = 2
            bannerImageView.layer.masksToBounds = true
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(bannerImageView)
        bannerImageView.snp.makeConstraints { (make) in
            make.edges.equalTo(self.contentView).inset(UIEdgeInsets.init(top: 15, left: 15, bottom: 15, right: 15))
            
            make.height.equalTo(HomeCellImageView_Height)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
