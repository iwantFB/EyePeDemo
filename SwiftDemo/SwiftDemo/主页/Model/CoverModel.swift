//
//  CoverModel.swift
//  SwiftDemo
//
//  Created by 胡斐 on 2018/4/10.
//  Copyright © 2018年 DEMO. All rights reserved.
//


import HandyJSON

class CoverModel: HandyJSON {
    
    var feed:String!
    var detail:String!
    var blurred:String?
    var sharing:String?
    var homepage:String!
    
    required init(){}
}
