//
//  DynamicInfoCardCell.swift
//  SwiftDemo
//
//  Created by 胡斐 on 2018/4/14.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit

class DynamicInfoCardCell : HomeBaseCell {
    
    let iconImageView = UIImageView.init()
    let nikeNameLb = UILabel.init()
    let descriptionLb = UILabel.init()
    let hotBtn = UIButton.init(type: .custom)//表示热评
    let remarkLb = UILabel.init()
    
    let simpleVideoContentView = UIView.init()
    let videoImageView = UIImageView.init()
    let videoTitleLb = UILabel.init()
    let categoryLb = UILabel.init()
    
    let replyBtn = UIButton.init(type: .custom)
    let replyTimeLb = UILabel.init()
    let likeCountLb = UILabel.init()
    
    let likedBtn = UIButton.init(type: .custom)
    
    override var itemModel: HomeItemModel?{
        didSet{
            guard itemModel?.type == "DynamicInfoCard" else {
                return
            }
            
            let iconStr = itemModel?.data?.user?.avatar
            let videoImageStr = itemModel?.data?.simpleVideo?.cover?.feed
            
            iconImageView.sd_setImage(with: URL.init(string: iconStr!), completed: nil)
            videoImageView.sd_setImage(with: URL.init(string: videoImageStr!), completed: nil)
            
            nikeNameLb.text = itemModel?.data?.user?.nickname
            descriptionLb.text = itemModel?.data?.text
//            hotBtn.isHidden = (itemModel?.data?.reply?.ifHotReply)!
                        hotBtn.isHidden = false
            remarkLb.text = itemModel?.data?.reply?.message
            videoTitleLb.text = itemModel?.data?.simpleVideo?.title
            categoryLb.text = String.init(format: "#%@", (itemModel?.data?.simpleVideo?.category)!)
            replyTimeLb.text = Date.timeStrWithSecond(second: (itemModel?.data?.simpleVideo?.releaseTime)!)
            likeCountLb.text = String.init(format: "%d", (itemModel?.data?.reply?.likeCount)!)
            likedBtn.isSelected = (itemModel?.data?.reply?.liked)!
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        p_setupUI()
    }
    
    func p_setupUI(){
        
        iconImageView.layer.cornerRadius = CGFloat(HomeCellIcon_Height / 2.0)
        iconImageView.layer.masksToBounds = true
        nikeNameLb.font = themeFont(fontSize: 10)
        descriptionLb.font = themeFont(fontSize: 8)
        hotBtn .setTitle("热评", for: .normal)
        hotBtn.setTitleColor(UIColor.blue, for: .normal)
        hotBtn.contentEdgeInsets = UIEdgeInsets.init(top: 5, left: 10, bottom: 5, right: 10)
        hotBtn.titleLabel?.font = themeFont(fontSize: 8)
        hotBtn.isUserInteractionEnabled = false
        hotBtn.layer.cornerRadius = 2
        hotBtn.layer.borderColor = UIColor.blue.cgColor
        hotBtn.layer.borderWidth = 1
        hotBtn.layer.masksToBounds = true
        
        remarkLb.font = themeFont(fontSize: 12)
        remarkLb.numberOfLines = 0;
        
        simpleVideoContentView.backgroundColor = RGBColorFromHex(rgbValue: 0xf5f5f5)
        simpleVideoContentView.layer.cornerRadius = 2
        simpleVideoContentView.layer.masksToBounds = true
        
        videoImageView.layer.cornerRadius = 2
        videoImageView.layer.masksToBounds = true
        
        videoTitleLb.numberOfLines = 2;
        videoTitleLb.font = themeBoldFont(fontSize: 12)
        categoryLb.font = themeFont(fontSize: 10)
        
        replyBtn.setTitle("回复", for: .normal)
        replyBtn.titleLabel?.font = themeBoldFont(fontSize: 10)
        replyBtn.setTitleColor(UIColor.darkGray, for: .normal)
        
        replyTimeLb.font = themeFont(fontSize: 10)
        replyTimeLb.textColor = UIColor.lightGray
        
        likeCountLb.font = themeBoldFont(fontSize: 10)
        
        self.contentView.addSubview(iconImageView)
        self.contentView.addSubview(nikeNameLb)
        self.contentView.addSubview(descriptionLb)
        self.contentView.addSubview(hotBtn)
        self.contentView.addSubview(remarkLb)
        self.contentView.addSubview(simpleVideoContentView)
        self.simpleVideoContentView.addSubview(videoImageView)
        self.simpleVideoContentView.addSubview(videoTitleLb)
        self.simpleVideoContentView.addSubview(categoryLb)
        self.contentView.addSubview(replyBtn)
        self.contentView.addSubview(replyTimeLb)
        self.contentView.addSubview(likeCountLb)
        self.contentView.addSubview(likedBtn)
        
        iconImageView.snp.makeConstraints { (make) in
            make.height.width.equalTo(HomeCellIcon_Height)
            make.topMargin.leftMargin.equalToSuperview().offset(15)
        }
        
        nikeNameLb.snp.makeConstraints { (make) in
            make.top.equalTo(iconImageView).offset(5)
            make.left.equalTo(iconImageView.snp.right).offset(15)
            make.right.equalTo(hotBtn.snp.left).offset(-15)
        }
        
        descriptionLb.snp.makeConstraints { (make) in
            make.top.equalTo(nikeNameLb.snp.bottom).offset(5)
            make.leading.equalTo(nikeNameLb)
        }
        
        hotBtn.snp.makeConstraints { (make) in
            make.right.equalToSuperview().offset(-15)
            make.centerY.equalTo(iconImageView)        }
        
        remarkLb.snp.makeConstraints { (make) in
            make.top.equalTo(descriptionLb.snp.bottom).offset(10)
            make.leading.equalTo(nikeNameLb)
            make.right.equalToSuperview().offset(-15)
        }
        
        simpleVideoContentView.snp.makeConstraints { (make) in
            make.left.equalTo(nikeNameLb)
            make.right.equalTo(-15)
            make.top.equalTo(remarkLb.snp.bottom).offset(10)
            make.height.equalTo(100)
        }
        
        videoImageView.snp.makeConstraints { (make) in
            make.topMargin.leftMargin.equalToSuperview().offset(10)
            make.bottomMargin.equalToSuperview().offset(-15)
            make.width.equalToSuperview().multipliedBy(0.5)
        }
        
        videoTitleLb.snp.makeConstraints { (make) in
            make.top.equalTo(videoImageView).offset(10)
            make.left.equalTo(videoImageView.snp.right).offset(10)
            make.right.equalToSuperview().offset(-10)
        }
        
        categoryLb.snp.makeConstraints { (make) in
            make.bottom.equalTo(videoImageView).offset(-10)
            make.leading.equalTo(videoTitleLb)
        }
        
        replyBtn.snp.makeConstraints { (make) in
            make.top.equalTo(simpleVideoContentView.snp.bottom).offset(10)
            make.bottomMargin.equalToSuperview().offset(-10)
            make.leading.equalTo(nikeNameLb)
        }
        
        replyTimeLb.snp.makeConstraints { (make) in
            make.left.equalTo(replyBtn.snp.right).offset(30)
            make.centerY.equalTo(replyBtn)
        }
        
        likeCountLb.snp.makeConstraints { (make) in
            make.centerY.equalTo(replyBtn)
            make.rightMargin.equalToSuperview().offset(-15)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
