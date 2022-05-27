//
//  HomeNavi.swift
//  SwiftDemo
//
//  Created by MacBook on 25/05/2022.
//  Copyright © 2022 DEMO. All rights reserved.
//

import Foundation
import UIKit

struct TrackingData: Codable {

  enum CodingKeys: String, CodingKey {
    case click
    case show
  }

  var click: [ActionConfig]?
  var show: [ActionConfig]?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    click = try container.decodeIfPresent([ActionConfig].self, forKey: .click)
    show = try container.decodeIfPresent([ActionConfig].self, forKey: .show)
  }

}


struct NaviItemConfig: Codable {

  enum CodingKeys: String, CodingKey {
    case type
    case label
    case trackingData = "tracking_data"
    case link
  }

  var type: String?
  var label: String
  var trackingData: TrackingData?
  var link: String?


  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    type = try container.decodeIfPresent(String.self, forKey: .type)
    label = try container.decodeIfPresent(String.self, forKey: .label) ?? ""
    trackingData = try container.decodeIfPresent(TrackingData.self, forKey: .trackingData)
    link = try container.decodeIfPresent(String.self, forKey: .link)
  }
    
    var image: UIImage? {
        get {
            let imageNameMap:[String:String] = [
                "logo":"word_logo_black_146x29_",
                "notice": "et_nav_message_46x46_",
                "": "et_nav_search_46x46_"
            ]
            return  imageNameMap[label].flatMap{ UIImage(named: $0) }
        }
    }

}

struct DataConfig: Codable {
    
    enum CodingKeys: String, CodingKey {
        case elementTitle = "element_title"
        case elementType = "element_type"
        case relativeIndex = "relative_index"
        case elementLabel = "element_label"
        case elementId = "element_id"
        case clickName = "click_name"
        case clickAction = "click_action"
        case clickActionUrl = "click_action_url"
        case elementContent = "element_content"
    }
    
    var elementTitle: String = ""
    var elementType: String = ""
    var relativeIndex: Int = -1
    var elementContent: String?
    var elementLabel: String = ""
    var elementId: Int = -1
    var clickName: String?
    var clickAction: String?
    var clickActionUrl: String?
    
    
    
    init(from decoder: Decoder) throws {
        let container =  try decoder.container(keyedBy: CodingKeys.self)
        elementTitle = try container.decodeIfPresent(String.self, forKey: .elementTitle) ?? ""
        elementType = try container.decodeIfPresent(String.self, forKey: .elementType) ?? ""
        relativeIndex = try container.decodeIfPresent(Int.self, forKey: .relativeIndex) ?? -1
        elementLabel = try container.decodeIfPresent(String.self, forKey: .elementLabel) ?? ""
        elementId = try container.decodeIfPresent(Int.self, forKey: .elementId) ?? -1
        elementContent = try container.decodeIfPresent(String.self, forKey: .elementContent)
        
        clickName = try container.decodeIfPresent(String.self, forKey: .clickName)
        clickAction = try container.decodeIfPresent(String.self, forKey: .clickAction)
        clickActionUrl = try container.decodeIfPresent(String.self, forKey: .clickActionUrl)
    }
    
}


struct ActionConfig: Codable {

  enum CodingKeys: String, CodingKey {
    case data
    case sdk
  }

  var data: DataConfig?
  var sdk: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    data = try container.decodeIfPresent(DataConfig.self, forKey: .data)
    sdk = try container.decodeIfPresent(String.self, forKey: .sdk)
  }

}

///这个位置的数据还没看到过，暂时只是占位，估计是导航栏的配置相关
struct ChildNav: Codable {

  enum CodingKeys: String, CodingKey {
    case slide
    case fixed
  }

  var slide: [NaviItemConfig]?
  var fixed: [NaviItemConfig]?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    slide = try container.decodeIfPresent([NaviItemConfig].self, forKey: .slide)
    fixed = try container.decodeIfPresent([NaviItemConfig].self, forKey: .fixed)
  }

}

struct NavList: Codable {

  enum CodingKeys: String, CodingKey {
    case forceRefresh = "force_refresh"
    case preloadDuration = "preload_duration"
    case url
    case childNav = "child_nav"
    case trackingData = "tracking_data"
    case isRecommend = "is_recommend"
    case defaultDisplay = "default_display"
    case title
    case pageUrl = "page_url"
    case pageType = "page_type"
    case pageLabel = "page_label"
    case enablePreload = "enable_preload"
    case pageUrlParameter = "page_url_parameter"
  }

  var forceRefresh: Bool?
  var preloadDuration: Int?
  var url: String?
  var childNav: ChildNav?
  var trackingData: TrackingData?
  var isRecommend: Bool?
  var defaultDisplay: Bool?
  var title: String?
  var pageUrl: String?
  var pageType: String?
  var pageLabel: String?
  var enablePreload: Bool?
  var pageUrlParameter: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    forceRefresh = try container.decodeIfPresent(Bool.self, forKey: .forceRefresh)
    preloadDuration = try container.decodeIfPresent(Int.self, forKey: .preloadDuration)
    url = try container.decodeIfPresent(String.self, forKey: .url)
    childNav = try container.decodeIfPresent(ChildNav.self, forKey: .childNav)
    trackingData = try container.decodeIfPresent(TrackingData.self, forKey: .trackingData)
    isRecommend = try container.decodeIfPresent(Bool.self, forKey: .isRecommend)
    defaultDisplay = try container.decodeIfPresent(Bool.self, forKey: .defaultDisplay)
    title = try container.decodeIfPresent(String.self, forKey: .title)
    pageUrl = try container.decodeIfPresent(String.self, forKey: .pageUrl)
    pageType = try container.decodeIfPresent(String.self, forKey: .pageType)
    pageLabel = try container.decodeIfPresent(String.self, forKey: .pageLabel)
    enablePreload = try container.decodeIfPresent(Bool.self, forKey: .enablePreload)
    pageUrlParameter = try container.decodeIfPresent(String.self, forKey: .pageUrlParameter)
  }

}

final class NaviItem: Codable {
    var left: [NaviItemConfig]?
    var center: [NaviItemConfig]?
    var right: [NaviItemConfig]?
    
    enum CodingKeys: String, CodingKey {
        case left
        case center
        case right
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        left = try container.decodeIfPresent([NaviItemConfig].self, forKey: .left)
        center = try container.decodeIfPresent([NaviItemConfig].self, forKey: .center)
        right = try container.decodeIfPresent([NaviItemConfig].self, forKey: .right)
    }
    
    var leftNavItem: [UIBarButtonItem] {
        get {
            guard let left = left else {
                return []
            }

            return left.map{
                UIBarButtonItem(customView: ActionButton.convertView(with: $0.trackingData!))
            }
        }
    }
    
    @objc private func test() {
        
    }
}

struct HomeNavi: Codable {

  enum CodingKeys: String, CodingKey {
    case navItem = "nav_item"
    case style
    case navList = "nav_list"
  }

  var navItem: NaviItem?
  var style: String?
  var navList: [NavList]?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    navItem = try container.decodeIfPresent(NaviItem.self, forKey: .navItem)
    style = try container.decodeIfPresent(String.self, forKey: .style)
    navList = try container.decodeIfPresent([NavList].self, forKey: .navList)
  }

}

