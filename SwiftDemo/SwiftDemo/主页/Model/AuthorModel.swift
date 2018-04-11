//
//  AuthorModel.swift
//  SwiftDemo
//
//  Created by 胡斐 on 2018/4/10.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import HandyJSON

class AuthorFollowModel: HandyJSON {
    
    var itemType:String!
    var itemId:Int!
    var followed:Bool?
    var shielded:Bool?
    required init(){}
}

class AuthorModel: HandyJSON {
    
    var id:String!
    var icon:String!
    var name:String!
    var description:String!
    var link:String?
    var latestReleaseTime:Double!
    var videoNum:Int!
    var adTrack:String?
    
    var follow:AuthorFollowModel?
    var shield:AuthorFollowModel?
    
    required init(){}
}
