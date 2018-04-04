//
//  HomeTableViewCell.swift
//  SwiftDemo
//
//  Created by 夜站 on 2018/4/4.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit

class HomeTableViewCell : UITableViewCell {
    
    //MARK- 工厂模式创建cell
    static func cellForRegistID(registerID:String)->HomeTableViewCell{
     return HomeTableViewCell.init(style: .default, reuseIdentifier: registerID)
    }
}
