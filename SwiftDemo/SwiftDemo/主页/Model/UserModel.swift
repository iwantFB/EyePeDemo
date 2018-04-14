//
//  UserModel.swift
//  SwiftDemo
//
//  Created by 胡斐 on 2018/4/14.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import HandyJSON

class UserModel: HandyJSON {
    
    var uid:Int?
    var nickname:String?
    var avatar:String?
    var userType:String?
    var ifPgc:Bool?
    var description:String?
    var cover:CoverModel?
    var category:String?
    var playUrl:String?
    var duration:Int?
    var releaseTime:Int?
    var resourceType:String?
    var consumption:ContentConsumptionModel?
    var collected:Bool!
    
    required init(){}
}
