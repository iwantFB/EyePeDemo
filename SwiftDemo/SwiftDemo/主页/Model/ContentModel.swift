//
//  ContentModel.swift
//  SwiftDemo
//
//  Created by 夜站 on 2018/4/10.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import HandyJSON

class ContentModel:HandyJSON {
    
    var type:String!
    var data:ContentDataModel!
    
    required init(){}
}

class ContentDataModel: HandyJSON {
    
    var dataType:String?
    var id:String?
    var title:String?
    var description:String?
    var library:String?
    var resourceType:String?
    var slogan:String?
    var category:String?
    var playUrl:String?
    var thumbPlayUrl:String?
    var duration:String?
    var releaseTime:String?
    var campaign:String?
    var waterMarks:String?
    var adTrack:String?
    var type:String?
    var titlePgc:String?
    var descriptionPgc:String?
    var remark:String?
    var ifLimitVideo:String?
    var idx:String?
    var shareAdTrack:String?
    var favoriteAdTrack:String?
    var webAdTrack:String?
    var date:Double?
    var promotion:String?
    var label:String?
    var descriptionEditor:String?
    var collected:String?
    var played:String?
    var lastViewTime:Double?
    var playlists:String?
    var src:String?

    required init(){}
}
