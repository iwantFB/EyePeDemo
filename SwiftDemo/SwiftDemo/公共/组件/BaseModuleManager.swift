//
//  BaseModuleManager.swift
//  SwiftDemo
//
//  Created by MacBook on 25/05/2022.
//  Copyright © 2022 DEMO. All rights reserved.
//

import Foundation
import UIKit

protocol ModuleManagerProtocol {
    func deal(with data: DataConfig) -> UIView
}

class SensorModule: NSObject, ModuleManagerProtocol {
    static let share: SensorModule = SensorModule()
    
    func deal(with data: DataConfig) -> UIView {
        let result: UIView = BaseControl(dataConfig: data) { data in
            guard let data = data else { return }
            
            //action存在，交由中间件处理（暂时将逻辑放在这里，而且我觉得用if来判断，有点蠢，）
            self.perform(NSSelectorFromString("\(data.clickAction!)_\(data.elementTitle)"), with: data.clickActionUrl)
            
        }

     return result
    }

}

class HttpModule: ModuleManagerProtocol {
    func deal(with data: DataConfig) -> UIView {
        return UIView()
    }

}

//实现action
extension SensorModule {
    private func REDIRECT_notice() {
        print("TEST")
    }
}
