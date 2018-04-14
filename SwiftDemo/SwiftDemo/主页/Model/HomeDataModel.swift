//
//  HomeDataModel.swift
//  SwiftDemo
//
//  Created by 夜站 on 2018/4/10.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import HandyJSON


//MARK:- header
class HomeDataHeaderModel : HandyJSON{
    
    var id:Int!
    var title:String!
    var font:String!
    var subTitle:String!
    var subTitleFont:String!
    var textAlign:String!
    var label:String?
    var actionUrl:String?
    var icon:String?
    var iconType:String?
    var description:String?
    var showHateVideo:Bool?
    var time:Double?
    var follow: AuthorFollowModel?
    
    required init(){}
}


class HomeItemDataModel: ContentDataModel {
    
    var header:HomeDataHeaderModel?
    var itemList:Array<HomeItemModel>?
    var content:ContentModel?
    var count:Int?
    var text:String?
    
    var image:String?
    var shade:Bool?
    
    var dynamicType:String?
    var user:UserModel?
    var createDate:Int?
    var simpleVideo:ContentDataModel?
    var reply:ReplyModel?
    
    required init(){}
}

// MARK:- itemList - Item
class HomeItemModel: HandyJSON {
    
    var type:String!
    var tag:String?
    var data:HomeItemDataModel?
    var id:Int!
    var adIndex:Int!
    
    required init(){}
}


