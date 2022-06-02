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

//比20大就行，确保刘海屏有是iPhoneX类型
let isIphoneX = (UIApplication.shared.statusBarFrame.size.height >= 33) ? true : false
let NAVIGATIONBAR_HEIGHT : CGFloat = isIphoneX ? 88 : 64
let STATUSBAR_HEIGHT : CGFloat = isIphoneX ? 44 : 20

let TABBAR_HEIGHT : CGFloat = isIphoneX ? 49 + 34 : 49

let HomeCellImageView_Height:CGFloat = 180
let HomeCellIcon_Height = 40.0

func themeFont(fontSize:Float)-> UIFont{
    return UIFont.systemFont(ofSize: CGFloat(fontSize))
}

func themeBoldFont(fontSize:Float)-> UIFont{
    return UIFont.boldSystemFont(ofSize: CGFloat(fontSize))
}

func RGBColorFromHex(rgbValue: Int) -> (UIColor) {
    
    return UIColor(red: ((CGFloat)((rgbValue & 0xFF0000) >> 16)) / 255.0,
                   green: ((CGFloat)((rgbValue & 0xFF00) >> 8)) / 255.0,
                   blue: ((CGFloat)(rgbValue & 0xFF)) / 255.0,
                   alpha: 1.0)
}

extension Date {
    static func timeStrWithSecond(second:Int) -> String{
        let time = TimeInterval(second / 1000);//13位时间戳—> 10位
        let currentTime = Date.init().timeIntervalSince1970
        let date = Date.init(timeIntervalSince1970: time)
        let dateFormatter = DateFormatter.init()
        if (currentTime - time) < 24*60*60 {
            dateFormatter.dateFormat = "HH:mm"
        }else{
            dateFormatter.dateFormat = "YYYY/MM/dd"
        }
        
        return dateFormatter.string(from: date)
    }
}

//module导入
import SDWebImage

