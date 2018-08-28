//
//  AutoPlayFollowCard.swift
//  SwiftDemo
//
//  Created by 胡斐 on 2018/8/27.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit

class AutoPlayFollowCard: HomeBaseCell {

    let adImageView = UIImageView();

    var adImageContentView = UIView()
    let iconImageView = UIImageView ();
    var titleLb = UILabel();
    let subTitleLb = UILabel();

    override var itemModel: HomeItemModel?{
        didSet{

            
        }
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier!)
        
        self.contentView.addSubview(adImageContentView)
        adImageContentView.addSubview(adImageView)
        self.contentView.addSubview(iconImageView)
        self.contentView.addSubview(titleLb)
        self.contentView.addSubview(subTitleLb)
        
        titleLb.font = UIFont.systemFont(ofSize: 14.0)
        subTitleLb.font = UIFont.systemFont(ofSize: 14.0)
        
        adImageView.snp.makeConstraints { (make) in
            make.edges.equalTo(self.adImageContentView)
        }
        
        adImageContentView.snp.makeConstraints { (make) in
            make.top.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
            make.height.equalTo(HomeCellImageView_Height)
        }
        
        iconImageView.snp.makeConstraints { (make) in
            make.left.equalTo(adImageContentView)
            make.height.width.equalTo(HomeCellIcon_Height)
            make.bottom.equalToSuperview().offset(-15)
        }
        
        titleLb.snp.makeConstraints { (make) in
            make.top.equalTo(iconImageView)
            make.left.equalTo(iconImageView.snp.right)
        }
        
        subTitleLb.snp.makeConstraints { (make) in
            make.top.equalTo(titleLb.snp.bottom)
            make.left.equalTo(titleLb)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
