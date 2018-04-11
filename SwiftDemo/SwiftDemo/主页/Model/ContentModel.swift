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

//tags
class ContentTagsModel:HandyJSON {
    var id:String!
    var name:String!
    var actionUrl:String?
    var desc:String?
    var bgPicture:String!
    var headerImage:String?
    //NORMAL
    var tagRecType:String!
    
    required init(){}
}


/// 评价分享数量
class ContentConsumptionModel:HandyJSON
{
    var collectionCount:Int!
    var shareCount:Int!
    var replyCount:Int!
    
    required init(){}
}


/// provider
class ContentProviderModel:HandyJSON{
    
    var name:String!
    var alias:String!
    var icon:String!
    required init(){}
}


class ContentDataModel: HomeDataHeaderModel {
    
    var dataType:String?
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
    var descriptionEditor:String?
    var collected:String?
    var played:String?
    var lastViewTime:Double?
    var playlists:String?
    var src:String?
    
    var cover: CoverModel?
    var tags:Array<ContentTagsModel>?
    var author:AuthorModel?
    var playInfo :Array<PlayInfoModel>?

    required init(){}
}
