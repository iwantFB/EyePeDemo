//
//  PlayInfoModel.swift
//  SwiftDemo
//
//  Created by 胡斐 on 2018/4/10.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import HandyJSON

class PlayInfoUrlModel: HandyJSON {
    
    var name:String!
    var url:String!
    var size:Int!
    
    
    required init(){}
}

class PlayInfoModel: HandyJSON {
    
    var height:Int!
    var width:Int!
    var name:String!
    var type:String!
    var url:String!
    var urlList:Array<PlayInfoUrlModel>!
    required init(){}
}
