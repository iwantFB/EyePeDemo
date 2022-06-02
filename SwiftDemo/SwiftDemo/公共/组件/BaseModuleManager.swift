//
//  BaseModuleManager.swift
//  SwiftDemo
//
//  Created by MacBook on 25/05/2022.
//  Copyright © 2022 DEMO. All rights reserved.
//

import Foundation
import UIKit


class BaseModuleManager: NSObject {
    class func deal(with data: DataConfig) -> UIView? { return nil }
}

struct ModuleManager {
    static func dealModule(with config: ActionConfig) -> UIView? {
        guard let sdk = config.sdk else{ return nil }
        guard let data = config.data else { return nil }
        
        let typeStr = "\(sdk.capitalized)Module"
        if let type = NSClassFromString("SwiftDemo.\(typeStr)"), type is BaseModuleManager.Type  {
            
            return (type as? BaseModuleManager.Type)?.deal(with: data)
        }
        
        return nil
    }
}

class SensorsModule: BaseModuleManager {
    
    override class func deal(with data: DataConfig) -> UIView {
        let result: UIView = BaseControl(dataConfig: data) { data in
            guard let data = data else { return }
            
            
        }

     return result
    }

}

class HttpModule: BaseModuleManager {
    override class func deal(with data: DataConfig) -> UIView {
        return UIView()
    }

}

//实现action
extension SensorsModule {
    private func REDIRECT_notice() {
        print("TEST")
    }
}
