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
            
            switch itemModel?.data?.type {
            case "footer2"?:
                titleLb.textAlignment = .right
                titleLb.font = themeBoldFont(fontSize: 10)
                break
            case "header5"?:
                titleLb.textAlignment = .left
                titleLb.font = themeBoldFont(fontSize: 16)
                break
            default:
                titleLb.textAlignment = .left
                titleLb.font = themeBoldFont(fontSize: 12)
                break
            }
        }
        
    }
    
    
    let titleLb = UILabel.init();
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(titleLb)
        titleLb.snp.makeConstraints { (make) in
            make.edges.equalTo(self.contentView).inset(UIEdgeInsets.init(top: 20, left: 15, bottom: 5, right: 15))
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
