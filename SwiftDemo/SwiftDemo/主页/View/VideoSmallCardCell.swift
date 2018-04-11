//
//  VideoSmallCardCell.swift
//  SwiftDemo
//
//  Created by 胡斐 on 2018/4/11.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit

class VideoSmallCardCell: HomeBaseCell {
    
    fileprivate let videoImageView = UIImageView.init()
    fileprivate let titleLb = UILabel.init()
    fileprivate let subTitleLb = UILabel.init()
    // 40 = 左右边距15*2 + 图文间隔10
    fileprivate let imageRightMargin = (SCREEN_WIDTH / 2.0) + 5.0
    
    override var itemModel: HomeItemModel?{
        didSet{
            guard itemModel?.type == "videoSmallCard" else {
                return
            }
            
            let imageStr = itemModel?.data?.cover?.feed
            let titleStr = itemModel?.data?.title
//            let subTitleStr = itemModel?.data.
            
            videoImageView.sd_setImage(with: URL.init(string: imageStr!), completed: nil)
            titleLb.text = titleStr
            
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        videoImageView.layer.cornerRadius = 2
        videoImageView.layer.masksToBounds = true
        
        titleLb.font = themeFont(fontSize: 12)
        titleLb.numberOfLines = 0
        subTitleLb.font = themeFont(fontSize: 8)
        
        self.contentView.addSubview(videoImageView)
        self.contentView.addSubview(titleLb)
        self.contentView.addSubview(subTitleLb)
        
        videoImageView.snp.makeConstraints { (make) in
            make.edges.edges.equalToSuperview().inset(UIEdgeInsets.init(top: 10, left: 15, bottom: 10, right: imageRightMargin))
            make.height.equalTo(100)
        }
        
        titleLb.snp.makeConstraints { (make) in
            make.left.equalTo(videoImageView.snp.right).offset(10)
            make.topMargin.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
        }
        
        subTitleLb.snp.makeConstraints { (make) in
            make.leading.equalTo(titleLb)
            make.bottom.equalToSuperview().offset(-15)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
