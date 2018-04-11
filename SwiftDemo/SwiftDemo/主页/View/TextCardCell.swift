//
//  TextCardCell.swift
//  SwiftDemo
//
//  Created by 夜站 on 2018/4/9.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit

class TextCardCell : HomeBaseCell {

    override var itemModel: HomeItemModel?{
        didSet{
            guard itemModel?.type == "textCard" else {
                return
            }
            titleLb.text = itemModel?.data?.text!
        }
    }
    
    let titleLb = UILabel.init();
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(titleLb)
        titleLb.snp.makeConstraints { (make) in
            make.edges.equalTo(self.contentView).inset(UIEdgeInsets.init(top: 20, left: 15, bottom: 5, right: 0))
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
}
