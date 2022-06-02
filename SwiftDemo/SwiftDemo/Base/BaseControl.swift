//
//  BaseControl.swift
//  SwiftDemo
//
//  Created by MacBook on 27/05/2022.
//  Copyright © 2022 DEMO. All rights reserved.
//

import UIKit


class BaseControl: UIControl {
    
    var data:Any
    var actionBlock:((_ data:Any?)->Void)?
    
    init( dataConfig:Any, action: ((_ data:Any?)->Void)?) {
        self.data = dataConfig
        self.actionBlock = action
        
        super.init(frame: .zero)
        
        //那么就是需要添加响应
        self.addTarget(self, action: #selector(touchUpinsideAction), for: .touchUpInside)
    }
    
    
    //MARK: action
    @objc
    private func touchUpinsideAction() {
        if let action = actionBlock {
            weak var weakSelf = self
            action(weakSelf?.data)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
