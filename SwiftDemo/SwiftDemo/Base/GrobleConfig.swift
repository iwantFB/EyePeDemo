//
//  GrobleCOnfig.swift
//  SwiftDemo
//
//  Created by 夜站 on 2018/4/3.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import Foundation
import UIKit


let SCREEN_WIDTH = UIScreen.main.bounds.size.width
let SCREEN_HEIGHT = UIScreen.main.bounds.size.height

let isIphoneX = SCREEN_HEIGHT == 812 ? true : false
let NAVIGATIONBAR_HEIGHT : CGFloat = isIphoneX ? 88 : 64
let STATUSBAR_HEIGHT : CGFloat = isIphoneX ? 44 : 20

let TABBAR_HEIGHT : CGFloat = isIphoneX ? 49 + 34 : 49

let HomeCellImageView_Height:CGFloat = 180
let HomeCellIcon_Height = 40.0

func themeFont(fontSize:Float)-> UIFont{
    return UIFont.systemFont(ofSize: 14)
}

//module导入
import SDWebImage

