//
//  PictureFollowCardCell.swift
//  SwiftDemo
//
//  Created by 胡斐 on 2018/8/27.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit

class PictureFollowCardCell: HomeBaseCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    let iconImageView = UIImageView()
    let titleLb = UILabel()
    let subTitleLb = UILabel()
    var descriptionLb = UILabel()
    let tagsView = FHTagsView()
    let videoImageView = UIImageView()
    let likeCountLb = UILabel()
    let commentCountLb = UILabel()
    
    override var itemModel: HomeItemModel?{
        didSet{
            let imageStr = itemModel?.data?.header?.icon
            guard imageStr != nil else{return}
            iconImageView.sd_setImage(with: URL.init(string: imageStr!), completed: nil)
            
            titleLb.text = itemModel?.data?.header?.issuerName!;
            subTitleLb.text = "发布"
            descriptionLb.text = itemModel?.data?.content?.data.description
            
            let videoImageStr = itemModel?.data?.content?.data.url!
            videoImageView.sd_setImage(with: URL.init(string: videoImageStr!), completed: nil)
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(iconImageView)
        self.contentView.addSubview(titleLb)
        self.contentView.addSubview(subTitleLb)
        self.contentView.addSubview(descriptionLb)
        self.contentView.addSubview(tagsView)
        self.contentView.addSubview(videoImageView)
        self.contentView.addSubview(likeCountLb)
        self.contentView.addSubview(commentCountLb)
        
        descriptionLb.numberOfLines = 0;

        
        iconImageView.snp.makeConstraints { (make) in
            make.width.height.equalTo(HomeCellIcon_Height)
            make.left.equalToSuperview().offset(15)
            make.top.equalToSuperview().offset(15)
        }
        
        titleLb.snp.makeConstraints { (make) in
            make.top.equalTo(iconImageView)
            make.left.equalTo(iconImageView.snp.right).offset(15)
        }
        
        subTitleLb.snp.makeConstraints { (make) in
            make.top.equalTo(titleLb.snp.bottom)
            make.left.equalTo(titleLb)
        }
        
        descriptionLb.snp.makeConstraints { (make) in
            make.top.equalTo(iconImageView.snp.bottom).offset(10)
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
        }
        
        videoImageView.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
            make.height.equalTo(HomeCellImageView_Height)
            make.top.equalTo(descriptionLb.snp.bottom).offset(10)
        }
        
        likeCountLb.snp.makeConstraints { (make) in
            make.left.equalTo(videoImageView)
            make.top.equalTo(videoImageView.snp.bottom).offset(10)
            make.bottom.equalToSuperview().offset(-10)
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


class FHTagsView: UIView {

    let leftMargin = CGFloat(10)
    let topMargin = CGFloat(5)
    
    fileprivate var tagsArr = Array<String>(){
        didSet{
            for title in tagsArr {
                appBtn(titleName: title)
            }
        }
    }
    
    private func appBtn(titleName title : String) {
        let btn = UIButton.init(type: .custom)
        btn .setTitle(title, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 10.0)
        btn.contentEdgeInsets = UIEdgeInsets.init(top: leftMargin, left: leftMargin, bottom: leftMargin, right: leftMargin);
        let size = title.boundingRect(with: CGSize.init(width: CGFloat.greatestFiniteMagnitude, height: 10.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 10.0)], context: nil);
        btn.frame = CGRect.init(x: 0, y: 0, width: size.width + 2*leftMargin, height: size.height+2*topMargin)
        self.addSubview(btn)
    }
    
}
