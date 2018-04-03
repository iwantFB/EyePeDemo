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

let TABBAR_HEIGHT : CGFloat = isIphoneX ? 49 + 34 : 49

