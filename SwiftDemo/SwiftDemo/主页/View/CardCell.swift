//
//  CardCell.swift
//  SwiftDemo
//
//  Created by MacBook on 02/06/2022.
//  Copyright © 2022 DEMO. All rights reserved.
//

import UIKit

protocol StyleConfigProtocol {
    associatedtype Padding
    associatedtype Background
    associatedtype SeparatorLine
    
    var padding: Padding?{get}
    var backgroud: Background?{get}
    var separatorLine:SeparatorLine?{get}
    
    //存放布局的其他参数
    var extreParam: [String:Any] {get}
}

protocol CellConfigProtocol {
    associatedtype Style
    associatedtype Interaction
    
    var style:Style{get}
    var interaction:Interaction{get}
    var cardData:CardDataProtocol{get}
}

protocol CardDataProtocol {
    
}

class CardBaseCell: UITableViewCell {
    var header:UIView = UIView()
    var body = UIView()
    var footer = UIView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.configSubViews()
    }
    
    private func configSubViews() {
        self.contentView.addSubview(header)
        self.contentView.addSubview(body)
        self.contentView.addSubview(footer)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


//MARK: 扩展
extension StyleConfigProtocol {
    func generate() -> UIView {
        let result = UIView()
        if let padding = padding {
            
        }
        return result
    }
}
