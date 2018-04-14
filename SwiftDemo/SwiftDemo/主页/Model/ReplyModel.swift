//
//  ReplyModel.swift
//  SwiftDemo
//
//  Created by 胡斐 on 2018/4/14.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import HandyJSON

class ReplyModel: HandyJSON {
    
    var id:Int?
    var videoId:Int?
    var videoTitle:String?
    var message:String?
    var likeCount:Int?
    var showConversationButton:Bool?
    var parentReplyId:Int?
    var rootReplyId:Int?
    var ifHotReply:Bool?
    var liked:Bool?
    
    required init(){}
}
