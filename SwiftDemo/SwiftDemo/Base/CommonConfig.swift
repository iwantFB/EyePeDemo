//
//  CommonConfig.swift
//  SwiftDemo
//
//  Created by MacBook on 23/05/2022.
//  Copyright © 2022 DEMO. All rights reserved.
//

import Foundation

struct Log: Codable {

  enum CodingKeys: String, CodingKey {
    case version
    case playLog = "play_log"
  }

  var version: String?
  var playLog: Bool = false

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    version = try container.decodeIfPresent(String.self, forKey: .version)
      playLog = try container.decodeIfPresent(Bool.self, forKey: .playLog) ?? false
  }
}

struct PrivateMessageRefresh: Codable {

  enum CodingKeys: String, CodingKey {
    case controlMsgDetail = "control_msg_detail"
    case controlList = "control_list"
    case version
  }

  var controlMsgDetail: Int?
  var controlList: Int?
  var version: String?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    controlMsgDetail = try container.decodeIfPresent(Int.self, forKey: .controlMsgDetail)
    controlList = try container.decodeIfPresent(Int.self, forKey: .controlList)
    version = try container.decodeIfPresent(String.self, forKey: .version)
  }
}

struct Push: Codable {

  enum CodingKeys: String, CodingKey {
    case startTime = "start_time"
    case version
    case message
    case endTime = "end_time"
  }

  var startTime: Int?
  var version: String?
  var message: String?
  var endTime: Int?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    startTime = try container.decodeIfPresent(Int.self, forKey: .startTime)
    version = try container.decodeIfPresent(String.self, forKey: .version)
    message = try container.decodeIfPresent(String.self, forKey: .message)
    endTime = try container.decodeIfPresent(Int.self, forKey: .endTime)
  }

}

struct Reply: Codable {

  enum CodingKeys: String, CodingKey {
    case on
    case version
  }

  var on: Bool?
  var version: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    on = try container.decodeIfPresent(Bool.self, forKey: .on)
    version = try container.decodeIfPresent(String.self, forKey: .version)
  }

}

struct RoamingCalendar: Codable {

  enum CodingKeys: String, CodingKey {
    case isShow = "is_show"
    case imageUrl = "image_url"
    case actionUrl = "action_url"
    case version
  }

  var isShow: Bool?
  var imageUrl: String?
  var actionUrl: String?
  var version: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    isShow = try container.decodeIfPresent(Bool.self, forKey: .isShow)
    imageUrl = try container.decodeIfPresent(String.self, forKey: .imageUrl)
    actionUrl = try container.decodeIfPresent(String.self, forKey: .actionUrl)
    version = try container.decodeIfPresent(String.self, forKey: .version)
  }

}

struct ShareTitle: Codable {

  enum CodingKeys: String, CodingKey {
    case version
    case weibo
    case wechatMoments = "wechat_moments"
    case qzone
  }

  var version: String?
  var weibo: String?
  var wechatMoments: String?
  var qzone: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    version = try container.decodeIfPresent(String.self, forKey: .version)
    weibo = try container.decodeIfPresent(String.self, forKey: .weibo)
    wechatMoments = try container.decodeIfPresent(String.self, forKey: .wechatMoments)
    qzone = try container.decodeIfPresent(String.self, forKey: .qzone)
  }

}

struct StartPage: Codable {

  enum CodingKeys: String, CodingKey {
    case version
    case actionUrl = "action_url"
    case imageUrl = "image_url"
  }

  var version: String?
  var actionUrl: String?
  var imageUrl: String?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    version = try container.decodeIfPresent(String.self, forKey: .version)
    actionUrl = try container.decodeIfPresent(String.self, forKey: .actionUrl)
    imageUrl = try container.decodeIfPresent(String.self, forKey: .imageUrl)
  }

}

struct PreloadVideos: Codable {

  enum CodingKeys: String, CodingKey {
//    case list
    case version
  }

  var list: [String]?
  var version: String?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
//    list = try container.decodeIfPresent([String].self, forKey: .list)
    version = try container.decodeIfPresent(String.self, forKey: .version)
  }
}

struct PreloadImages: Codable {

  enum CodingKeys: String, CodingKey {
//    case list
    case version
  }

//    var list: [String:Any]?
  var version: String?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
//    list = try container.decodeIfPresent([].self, forKey: .list)
    version = try container.decodeIfPresent(String.self, forKey: .version)
  }

}

struct Preload: Codable {

  enum CodingKeys: String, CodingKey {
    case on
    case version
  }

  var on: Bool?
  var version: String?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    on = try container.decodeIfPresent(Bool.self, forKey: .on)
    version = try container.decodeIfPresent(String.self, forKey: .version)
  }
}

struct LoginOptions: Codable {

  enum CodingKeys: String, CodingKey {
    case type
    case order
    case iconUrl = "icon_url"
  }

  var type: String?
  var order: Int?
  var iconUrl: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    type = try container.decodeIfPresent(String.self, forKey: .type)
    order = try container.decodeIfPresent(Int.self, forKey: .order)
    iconUrl = try container.decodeIfPresent(String.self, forKey: .iconUrl)
  }

}

struct Launch: Codable {

  enum CodingKeys: String, CodingKey {
//    case adTrack = "ad_track"
    case version
  }

//  var adTrack: Any?
  var version: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
//    adTrack = try container.decodeIfPresent([].self, forKey: .adTrack)
    version = try container.decodeIfPresent(String.self, forKey: .version)
  }

}


struct IssueLogo: Codable {

  enum CodingKeys: String, CodingKey {
    case adapter
    case weekendExtra = "weekend_extra"
  }

  var adapter: Bool?
  var weekendExtra: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    adapter = try container.decodeIfPresent(Bool.self, forKey: .adapter)
    weekendExtra = try container.decodeIfPresent(String.self, forKey: .weekendExtra)
  }

}

struct IssueCover: Codable {

  enum CodingKeys: String, CodingKey {
    case issueLogo = "issue_logo"
    case version
  }

  var issueLogo: IssueLogo?
  var version: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    issueLogo = try container.decodeIfPresent(IssueLogo.self, forKey: .issueLogo)
    version = try container.decodeIfPresent(String.self, forKey: .version)
  }

}

struct InterceptorAdOutActionUrl: Codable {

  enum CodingKeys: String, CodingKey {
    case controlSwitch = "control_switch"
    case version
  }

  var controlSwitch: Bool?
  var version: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    controlSwitch = try container.decodeIfPresent(Bool.self, forKey: .controlSwitch)
    version = try container.decodeIfPresent(String.self, forKey: .version)
  }

}

struct AutoCache: Codable {

  enum CodingKeys: String, CodingKey {
    case videoNum = "video_num"
    case forceOff = "force_off"
    case version
  }

  var videoNum: Int?
  var forceOff: Bool?
  var version: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    videoNum = try container.decodeIfPresent(Int.self, forKey: .videoNum)
    forceOff = try container.decodeIfPresent(Bool.self, forKey: .forceOff)
    version = try container.decodeIfPresent(String.self, forKey: .version)
  }

}

struct BaobabPreloadVideos: Codable {

  enum CodingKeys: String, CodingKey {
    case version
//    case list
  }

  var version: Int?
//  var list: Any?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    version = try container.decodeIfPresent(Int.self, forKey: .version)
//    list = try container.decodeIfPresent([].self, forKey: .list)
  }

}

struct CampaignInDetail: Codable {

  enum CodingKeys: String, CodingKey {
    case showType = "show_type"
    case imageUrl = "image_url"
    case actionUrl = "action_url"
    case version
    case available
  }

  var showType: String?
  var imageUrl: String?
  var actionUrl: String?
  var version: String?
  var available: Bool?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    showType = try container.decodeIfPresent(String.self, forKey: .showType)
    imageUrl = try container.decodeIfPresent(String.self, forKey: .imageUrl)
    actionUrl = try container.decodeIfPresent(String.self, forKey: .actionUrl)
    version = try container.decodeIfPresent(String.self, forKey: .version)
    available = try container.decodeIfPresent(Bool.self, forKey: .available)
  }

}

struct CampaignInFeed: Codable {

  enum CodingKeys: String, CodingKey {
    case version
    case actionUrl = "action_url"
    case available
    case imageUrl = "image_url"
  }

  var version: String?
  var actionUrl: String?
  var available: Bool?
  var imageUrl: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    version = try container.decodeIfPresent(String.self, forKey: .version)
    actionUrl = try container.decodeIfPresent(String.self, forKey: .actionUrl)
    available = try container.decodeIfPresent(Bool.self, forKey: .available)
    imageUrl = try container.decodeIfPresent(String.self, forKey: .imageUrl)
  }

}


struct Consumption: Codable {

  enum CodingKeys: String, CodingKey {
    case version
    case display
  }

  var version: String?
  var display: Bool?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    version = try container.decodeIfPresent(String.self, forKey: .version)
    display = try container.decodeIfPresent(Bool.self, forKey: .display)
  }

}

struct FirstLaunch: Codable {

  enum CodingKeys: String, CodingKey {
    case version
    case showFirstDetail = "show_first_detail"
  }

  var version: String?
  var showFirstDetail: Bool?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    version = try container.decodeIfPresent(String.self, forKey: .version)
    showFirstDetail = try container.decodeIfPresent(Bool.self, forKey: .showFirstDetail)
  }

}

struct ButtonList: Codable {

  enum CodingKeys: String, CodingKey {
    case text
    case ifAdTrack = "if_ad_track"
    case actionUrl = "action_url"
    case highlight
  }

  var text: String?
  var ifAdTrack: Bool?
  var actionUrl: String?
  var highlight: Bool?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    text = try container.decodeIfPresent(String.self, forKey: .text)
    ifAdTrack = try container.decodeIfPresent(Bool.self, forKey: .ifAdTrack)
    actionUrl = try container.decodeIfPresent(String.self, forKey: .actionUrl)
    highlight = try container.decodeIfPresent(Bool.self, forKey: .highlight)
  }

}

struct PrivacyPolicy: Codable {

  enum CodingKeys: String, CodingKey {
    case buttonList = "button_list"
  }

  var buttonList: [ButtonList]?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    buttonList = try container.decodeIfPresent([ButtonList].self, forKey: .buttonList)
  }

}

struct Homepage: Codable {

  enum CodingKeys: String, CodingKey {
    case cover
    case version
  }

  var cover: String?
  var version: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    cover = try container.decodeIfPresent(String.self, forKey: .cover)
    version = try container.decodeIfPresent(String.self, forKey: .version)
  }

}


struct CommonConfig: Codable {
    
    enum CodingKeys: String, CodingKey {
      case homepage
      case privacyPolicy = "privacy_policy"
      case log
      case launch
      case autoCache = "auto_cache"
      case shareTitle = "share_title"
      case issueCover = "issue_cover"
      case isHomepageSearchEnabled = "is_homepage_search_enabled"
      case startPage = "start_page"
      case privateMessageRefresh = "private_message_refresh"
      case push
      case roamingCalendar = "roaming_calendar"
      case firstLaunch = "first_launch"
      case nativeVideoAd = "native_video_ad"
      case interceptorAdOutActionUrl = "interceptor_ad_out_action_url"
      case version
      case consumption
      case loginOptions = "login_options"
      case campaignInDetail = "campaign_in_detail"
      case reply
      case baobabPreloadVideos = "baobab_preload_videos"
//      case interactionModalAd = "interaction_modal_ad"
      case campaignInFeed = "campaign_in_feed"
      case preloadImages = "preload_images"
      case preloadVideos = "preload_videos"
      case preload
    }

    var homepage: Homepage?
    var privacyPolicy: PrivacyPolicy?
    var log: Log?
    var launch: Launch?
    var autoCache: AutoCache?
    var shareTitle: ShareTitle?
    var issueCover: IssueCover?
    var isHomepageSearchEnabled: Bool?
    var startPage: StartPage?
    var privateMessageRefresh: PrivateMessageRefresh?
    var push: Push?
    var roamingCalendar: RoamingCalendar?
    var firstLaunch: FirstLaunch?
    var nativeVideoAd: [String]?
    var interceptorAdOutActionUrl: InterceptorAdOutActionUrl?
    var version: String?
    var consumption: Consumption?
    var loginOptions: [LoginOptions]?
    var campaignInDetail: CampaignInDetail?
    var reply: Reply?
    var baobabPreloadVideos: BaobabPreloadVideos?
//    var interactionModalAd: InteractionModalAd?
    var campaignInFeed: CampaignInFeed?
    var preloadImages: PreloadImages?
    var preloadVideos: PreloadVideos?
    var preload: Preload?
    
    init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: CodingKeys.self)
      homepage = try container.decodeIfPresent(Homepage.self, forKey: .homepage)
      privacyPolicy = try container.decodeIfPresent(PrivacyPolicy.self, forKey: .privacyPolicy)
      log = try container.decodeIfPresent(Log.self, forKey: .log)
      launch = try container.decodeIfPresent(Launch.self, forKey: .launch)
      autoCache = try container.decodeIfPresent(AutoCache.self, forKey: .autoCache)
      shareTitle = try container.decodeIfPresent(ShareTitle.self, forKey: .shareTitle)
      issueCover = try container.decodeIfPresent(IssueCover.self, forKey: .issueCover)
      isHomepageSearchEnabled = try container.decodeIfPresent(Bool.self, forKey: .isHomepageSearchEnabled)
      startPage = try container.decodeIfPresent(StartPage.self, forKey: .startPage)
      privateMessageRefresh = try container.decodeIfPresent(PrivateMessageRefresh.self, forKey: .privateMessageRefresh)
      push = try container.decodeIfPresent(Push.self, forKey: .push)
      roamingCalendar = try container.decodeIfPresent(RoamingCalendar.self, forKey: .roamingCalendar)
      firstLaunch = try container.decodeIfPresent(FirstLaunch.self, forKey: .firstLaunch)
//      nativeVideoAd = try container.decodeIfPresent([String].self, forKey: .nativeVideoAd)
      interceptorAdOutActionUrl = try container.decodeIfPresent(InterceptorAdOutActionUrl.self, forKey: .interceptorAdOutActionUrl)
      version = try container.decodeIfPresent(String.self, forKey: .version)
      consumption = try container.decodeIfPresent(Consumption.self, forKey: .consumption)
      loginOptions = try container.decodeIfPresent([LoginOptions].self, forKey: .loginOptions)
      campaignInDetail = try container.decodeIfPresent(CampaignInDetail.self, forKey: .campaignInDetail)
      reply = try container.decodeIfPresent(Reply.self, forKey: .reply)
      baobabPreloadVideos = try container.decodeIfPresent(BaobabPreloadVideos.self, forKey: .baobabPreloadVideos)
//      interactionModalAd = try container.decodeIfPresent(InteractionModalAd.self, forKey: .interactionModalAd)
      campaignInFeed = try container.decodeIfPresent(CampaignInFeed.self, forKey: .campaignInFeed)
      preloadImages = try container.decodeIfPresent(PreloadImages.self, forKey: .preloadImages)
      preloadVideos = try container.decodeIfPresent(PreloadVideos.self, forKey: .preloadVideos)
      preload = try container.decodeIfPresent(Preload.self, forKey: .preload)
    }
  }
