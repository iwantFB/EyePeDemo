//
//  BriefCardCell.swift
//  SwiftDemo
//
//  Created by 胡斐 on 2018/4/12.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit

class BriefCardCell: HomeBaseCell {
    
    let iconImageView = UIImageView.init()
    let titleLb = UILabel.init()
    let descriptionLb = UILabel.init()
    
    override var itemModel: HomeItemModel?{
        didSet{
            guard itemModel?.type == "briefCard" else {return}
            
            let iconStr = itemModel?.data?.icon
            let titleStr = itemModel?.data?.title
            let descriptionStr = itemModel?.data?.description
            
            imageView?.sd_setImage(with: URL.init(string: iconStr!), completed: nil)
            titleLb.text = titleStr
            descriptionLb.text = descriptionStr
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.accessoryType = .disclosureIndicator
        
        titleLb.font = themeFont(fontSize: 12)
        descriptionLb.font = themeFont(fontSize: 10)
        
        self.contentView.addSubview(iconImageView)
        self.contentView.addSubview(titleLb)
        self.contentView.addSubview(descriptionLb)
        
        iconImageView.snp.makeConstraints { (make) in
            make.width.height.equalTo(HomeCellIcon_Height)
            make.topMargin.left.equalToSuperview().offset(15)
            make.bottomMargin.equalToSuperview().offset(-15)
        }
        
        titleLb.snp.makeConstraints { (make) in
            make.left.equalTo(iconImageView.snp.right).offset(15)
            make.top.equalTo(iconImageView).offset(5)
        }
        
        descriptionLb.snp.makeConstraints { (make) in
            make.top.equalTo(titleLb.snp.bottom).offset(10)
            make.leading.equalTo(titleLb)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
