//
//  BaseControl.swift
//  SwiftDemo
//
//  Created by MacBook on 27/05/2022.
//  Copyright © 2022 DEMO. All rights reserved.
//

import UIKit


class BaseControl: UIControl {
    var data:DataConfig
    var actionBlock:((_ data:DataConfig?)->Void)?
    
    init( dataConfig:DataConfig, action: ((_ data:DataConfig?)->Void)?) {
        self.data = dataConfig
        self.actionBlock = action
        
        super.init(frame: .zero)
        
        //那么就是需要添加响应
        if dataConfig.clickAction != nil {
            self.addTarget(self, action: #selector(touchUpinsideAction), for: .touchUpInside)
        }
        
        //区分该元素是何类型
        let elementType = dataConfig.elementType
        
        if elementType == "nav_item" {
            self.configNaviItem(title: dataConfig.elementTitle, content: dataConfig.elementContent)
        }
    }
    
    
    //MARK: action
    @objc
    private func touchUpinsideAction() {
        if let action = actionBlock {
            weak var weakSelf = self
            action(weakSelf?.data)
        }
    }
    
    //MARK: private
    //item有固定大小，即 44 * 44
    fileprivate func configNaviItem(title: String, content: String?) {
        self.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
        let imageView = UIImageView(image: UIImage(named: title))
        let label = UIView.naviStyleLabel(title: content)
        let stack = UIStackView.init(arrangedSubviews: [
            imageView,label
        ])
        
        self.addSubview(stack)
        stack.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
