//
//  FollowCardCell.swift
//  SwiftDemo
//
//  Created by 胡斐 on 2018/4/11.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit

class FollowCardCell: HomeBaseCell {
    
    fileprivate let videoImageView = UIImageView.init()
    fileprivate let iconImageView = UIImageView.init()
    fileprivate  let titleLb = UILabel.init()
    fileprivate let descriptionLb = UILabel.init()
    fileprivate let shareBtn = UIButton.init(type: .custom)
    
    override var itemModel: HomeItemModel?{
        didSet{
            guard itemModel?.type == "followCard" else{
                return
            }
            
            let videoImageStr = itemModel?.data?.content?.data.cover.feed
            let iconImageStr = itemModel?.data?.header?.icon!
            let titleStr = itemModel?.data?.content?.data.title
            let descriptionStr = (itemModel?.data?.header?.title)! + " / " + (itemModel?.data?.header?.description)!
            videoImageView.sd_setImage(with: URL.init(string: videoImageStr!), completed: nil)
            iconImageView.sd_setImage(with: URL.init(string: iconImageStr!), completed: nil)
            titleLb.text = titleStr
            descriptionLb.text = descriptionStr
            
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        titleLb.font = themeFont(fontSize: 14)
        descriptionLb.font = themeFont(fontSize: 12)
        videoImageView.layer.cornerRadius = 2
        videoImageView.layer.masksToBounds = true
        iconImageView.layer.cornerRadius = 20
        iconImageView.layer.masksToBounds = true
        
        self.contentView.addSubview(videoImageView)
        self.contentView.addSubview(iconImageView)
        self.contentView.addSubview(titleLb)
        self.contentView.addSubview(descriptionLb)
        
        videoImageView.snp.makeConstraints { (make) in
            make.topMargin.leftMargin.equalTo(self.contentView).offset(15)
            make.rightMargin.equalToSuperview().offset(-15)
            make.bottom.equalTo(iconImageView.snp.top).offset(-10)
            make.height.equalTo(HomeCellImageView_Height)
        }
        
        iconImageView.snp.makeConstraints { (make) in
            make.leftMargin.equalTo(self.contentView).offset(15)
            make.bottomMargin.equalToSuperview().offset(-20)
            make.height.width.equalTo(40)
        }
        
        titleLb.snp.makeConstraints { (make) in
            make.left.equalTo(iconImageView.snp.right).offset(10)
            make.top.equalTo(iconImageView)
        }
        
        descriptionLb.snp.makeConstraints { (make) in
            make.top.equalTo(titleLb.snp.bottom)
            make.leading.equalTo(titleLb)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
