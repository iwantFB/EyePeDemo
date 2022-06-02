//
//  ActionButton.swift
//  SwiftDemo
//
//  Created by MacBook on 25/05/2022.
//  Copyright © 2022 DEMO. All rights reserved.
//

import Foundation
import UIKit


struct ActionButton {
    
    //button能自己处理跳转和调整
    var trackData: TrackingData
    
    static func convertView(with data: TrackingData) -> UIView {
        let view = UIView()
        
        //目前还不明白show和click的作用，推测应该是show做显示，click做响应，暂时的做法是用click作为视图的输出
        if let _ = data.show {
            
        }
        
        if let click = data.click {
            let views = click.flatMap{ item in
                ModuleManager.dealModule(with: item)
            }
            for item in views {
                view.addSubview(item)
                item.snp.makeConstraints { make in
                    make.edges.equalTo(view)
                }
            }
        }
        
        return view
    }
    
}



