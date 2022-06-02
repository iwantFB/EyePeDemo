
import Foundation

struct AdMaterial: Codable {

  enum CodingKeys: String, CodingKey {
    case fileName = "file_name"
    case materialType = "material_type"
    case info
    case dataType = "data_type"
    case size
    case url
    case title
    case type
    case date
    case id
  }

  var fileName: String?
  var materialType: String?
  var info: Info?
  var dataType: String?
  var size: Int?
  var url: String?
  var title: String?
  var type: String?
  var date: String?
  var id: Int?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    fileName = try container.decodeIfPresent(String.self, forKey: .fileName)
    materialType = try container.decodeIfPresent(String.self, forKey: .materialType)
    info = try container.decodeIfPresent(Info.self, forKey: .info)
    dataType = try container.decodeIfPresent(String.self, forKey: .dataType)
    size = try container.decodeIfPresent(Int.self, forKey: .size)
    url = try container.decodeIfPresent(String.self, forKey: .url)
    title = try container.decodeIfPresent(String.self, forKey: .title)
    type = try container.decodeIfPresent(String.self, forKey: .type)
    date = try container.decodeIfPresent(String.self, forKey: .date)
    id = try container.decodeIfPresent(Int.self, forKey: .id)
  }

}

struct ApiRequest: Codable {

  enum CodingKeys: String, CodingKey {
    case url
    case params
  }

  var url: String?
  var params: CardBodyApiParam?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    url = try container.decodeIfPresent(String.self, forKey: .url)
    params = try container.decodeIfPresent(CardBodyApiParam.self, forKey: .params)
  }

}

struct CardBodyApiParam: Codable {
    
    enum CodingKeys: String, CodingKey {
        case pageParams = "page_params"
        case pageLabel = "page_label"
        case lastItemId = "last_item_id"
        case dataSource = "data_source"
        case material
        case materialRelativeIndex = "material_relative_index"
        case materialIndex = "material_index"
        case cardIndex = "card_index"
        case card
    }

    var pageParams: String?
    var pageLabel: String?
    var lastItemId: Int?
    var dataSource: String?
    var material: String?
    var materialRelativeIndex: Int?
    var materialIndex: Int?
    var cardIndex: Int?
    var card: String?


    init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: CodingKeys.self)
        pageParams = try container.decodeIfPresent( String.self, forKey:.pageParams)
        pageLabel = try container.decodeIfPresent( String.self, forKey:.pageLabel)
        lastItemId = try container.decodeIfPresent( Int.self, forKey:.lastItemId)
        dataSource = try container.decodeIfPresent( String.self, forKey:.dataSource)
        material = try container.decodeIfPresent( String.self, forKey:.material)
        materialRelativeIndex = try container.decodeIfPresent( Int.self, forKey:.materialRelativeIndex)
        materialIndex = try container.decodeIfPresent( Int.self, forKey:.materialIndex)
        cardIndex = try container.decodeIfPresent( Int.self, forKey:.cardIndex)
        card = try container.decodeIfPresent( String.self, forKey:.card)
    }

  }

struct Author: Codable {

  enum CodingKeys: String, CodingKey {
    case type
    case descriptionValue = "description"
    case avatar
    case followed
    case uid
    case link
    case nick
  }

  var type: String?
  var descriptionValue: String?
  var avatar: Avatar?
  var followed: Bool?
  var uid: Int?
  var link: String?
  var nick: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    type = try container.decodeIfPresent(String.self, forKey: .type)
    descriptionValue = try container.decodeIfPresent(String.self, forKey: .descriptionValue)
    avatar = try container.decodeIfPresent(Avatar.self, forKey: .avatar)
    followed = try container.decodeIfPresent(Bool.self, forKey: .followed)
    uid = try container.decodeIfPresent(Int.self, forKey: .uid)
    link = try container.decodeIfPresent(String.self, forKey: .link)
    nick = try container.decodeIfPresent(String.self, forKey: .nick)
  }

}

struct Avatar: Codable {

  enum CodingKeys: String, CodingKey {
    case imgInfo = "img_info"
    case url
    case shape
  }

  var imgInfo: ImgInfo?
  var url: String?
  var shape: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    imgInfo = try container.decodeIfPresent(ImgInfo.self, forKey: .imgInfo)
    url = try container.decodeIfPresent(String.self, forKey: .url)
    shape = try container.decodeIfPresent(String.self, forKey: .shape)
  }

}

struct Background: Codable {

  enum CodingKeys: String, CodingKey {
    case color
  }

  var color: String?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    color = try container.decodeIfPresent(String.self, forKey: .color)
  }

}

struct BgImage: Codable {

  enum CodingKeys: String, CodingKey {
    case imgInfo = "img_info"
    case url
  }

  var imgInfo: ImgInfo?
  var url: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    imgInfo = try container.decodeIfPresent(ImgInfo.self, forKey: .imgInfo)
    url = try container.decodeIfPresent(String.self, forKey: .url)
  }

}

struct CardBody: Codable {

  enum CodingKeys: String, CodingKey {
    case apiRequest = "api_request"
    case metroList = "metro_list"
  }

  var apiRequest: ApiRequest?
  var metroList: [MetroList]?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    apiRequest = try container.decodeIfPresent(ApiRequest.self, forKey: .apiRequest)
    metroList = try container.decodeIfPresent([MetroList].self, forKey: .metroList)
  }

}

struct SeparatorLineConfig: Codable {

  enum CodingKeys: String, CodingKey {
    case margin
    case color
    case height
  }

  var margin: Margin?
  var color: String?
  var height: Float?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    margin = try container.decodeIfPresent(Margin.self, forKey: .margin)
    color = try container.decodeIfPresent(String.self, forKey: .color)
    height = try container.decodeIfPresent(Float.self, forKey: .height)
  }

}


struct CardData: Codable {

  enum CodingKeys: String, CodingKey {
    case header
    case body
    case footer
  }

  var header: CardHeaderFooterConfig?
  var body: CardBody?
  var footer: CardHeaderFooterConfig?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    header = try container.decodeIfPresent(CardHeaderFooterConfig.self, forKey: .header)
    body = try container.decodeIfPresent(CardBody.self, forKey: .body)
    footer = try container.decodeIfPresent(CardHeaderFooterConfig.self, forKey: .footer)
  }

}

struct Child: Codable {

  enum CodingKeys: String, CodingKey {
    case data
    case type
  }

  var data: Data?
  var type: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    data = try container.decodeIfPresent(Data.self, forKey: .data)
    type = try container.decodeIfPresent(String.self, forKey: .type)
  }

}

struct Click: Codable {

  enum CodingKeys: String, CodingKey {
    case child
    case data
    case sdk
  }

  var child: [Child]?
  var data: Data?
  var sdk: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    child = try container.decodeIfPresent([Child].self, forKey: .child)
    data = try container.decodeIfPresent(Data.self, forKey: .data)
    sdk = try container.decodeIfPresent(String.self, forKey: .sdk)
  }

}

struct Cover: Codable {

  enum CodingKeys: String, CodingKey {
    case imgInfo = "img_info"
    case url
  }

  var imgInfo: ImgInfo?
  var url: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    imgInfo = try container.decodeIfPresent(ImgInfo.self, forKey: .imgInfo)
    url = try container.decodeIfPresent(String.self, forKey: .url)
  }

}

struct CropArea: Codable {

  enum CodingKeys: String, CodingKey {
    case width
    case height
    case originWidth = "origin_width"
    case originHeight = "origin_height"
    case x
    case y
  }

  var width: Int?
  var height: Int?
  var originWidth: Int?
  var originHeight: Int?
  var x: Int?
  var y: Int?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    width = try container.decodeIfPresent(Int.self, forKey: .width)
    height = try container.decodeIfPresent(Int.self, forKey: .height)
    originWidth = try container.decodeIfPresent(Int.self, forKey: .originWidth)
    originHeight = try container.decodeIfPresent(Int.self, forKey: .originHeight)
    x = try container.decodeIfPresent(Int.self, forKey: .x)
    y = try container.decodeIfPresent(Int.self, forKey: .y)
  }

}

struct TrackingDataSource: Codable {

  enum CodingKeys: String, CodingKey {
    case params
    case label
  }

  var params: CardBodyParams?
  var label: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    params = try container.decodeIfPresent(CardBodyParams.self, forKey: .params)
    label = try container.decodeIfPresent(String.self, forKey: .label)
  }

}

struct Duration: Codable {

  enum CodingKeys: String, CodingKey {
    case value
    case text
  }

  var value: Int?
  var text: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    value = try container.decodeIfPresent(Int.self, forKey: .value)
    text = try container.decodeIfPresent(String.self, forKey: .text)
  }

}


struct ImgInfo: Codable {

  enum CodingKeys: String, CodingKey {
    case height
    case width
    case scale
  }

  var height: Float?
  var width: Float?
  var scale: Float?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    height = try container.decodeIfPresent(Float.self, forKey: .height)
    width = try container.decodeIfPresent(Float.self, forKey: .width)
    scale = try container.decodeIfPresent(Float.self, forKey: .scale)
  }

}

struct Info: Codable {

  enum CodingKeys: String, CodingKey {
    case scale
    case width
    case height
  }

  var scale: Float?
  var width: Int?
  var height: Int?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    scale = try container.decodeIfPresent(Float.self, forKey: .scale)
    width = try container.decodeIfPresent(Int.self, forKey: .width)
    height = try container.decodeIfPresent(Int.self, forKey: .height)
  }

}

struct Interaction: Codable {

  enum CodingKeys: String, CodingKey {
    case scroll
  }

  var scroll: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    scroll = try container.decodeIfPresent(String.self, forKey: .scroll)
  }

}

struct Left: Codable {

  enum CodingKeys: String, CodingKey {
    case text
    case link
  }

  var text: String?
  var link: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    text = try container.decodeIfPresent(String.self, forKey: .text)
    link = try container.decodeIfPresent(String.self, forKey: .link)
  }

}

struct Margin: Codable {

  enum CodingKeys: String, CodingKey {
    case right
    case bottom
    case top
    case left
  }

  var right: Int?
  var bottom: Int?
  var top: Int?
  var left: Int?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    right = try container.decodeIfPresent(Int.self, forKey: .right)
    bottom = try container.decodeIfPresent(Int.self, forKey: .bottom)
    top = try container.decodeIfPresent(Int.self, forKey: .top)
    left = try container.decodeIfPresent(Int.self, forKey: .left)
  }

}

struct MetroData: Codable {

  enum CodingKeys: String, CodingKey {
    case tags
    case recommendLevel = "recommend_level"
    case footer
    case imageId = "image_id"
    case cover
    case title
    case author
    case cropArea = "crop_area"
    case videoId = "video_id"
    case resourceType = "resource_type"
    case playCtrl = "play_ctrl"
    case hotValue = "hot_value"
    case playUrl = "play_url"
    case previewUrl = "preview_url"
    case resourceId = "resource_id"
    case duration
  }

  var tags: [Tags]?
  var recommendLevel: String?
  var footer: MetroFooterConfig?
  var imageId: Int?
  var cover: Cover?
  var title: String?
  var author: Author?
  var cropArea: CropArea?
  var videoId: String?
  var resourceType: String?
  var playCtrl: PlayCtrl?
  var hotValue: Int?
  var playUrl: String?
  var previewUrl: String?
  var resourceId: Int?
  var duration: Duration?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    tags = try container.decodeIfPresent([Tags].self, forKey: .tags)
    recommendLevel = try container.decodeIfPresent(String.self, forKey: .recommendLevel)
    footer = try container.decodeIfPresent(MetroFooterConfig.self, forKey: .footer)
    imageId = try container.decodeIfPresent(Int.self, forKey: .imageId)
    cover = try container.decodeIfPresent(Cover.self, forKey: .cover)
    title = try container.decodeIfPresent(String.self, forKey: .title)
    author = try container.decodeIfPresent(Author.self, forKey: .author)
    cropArea = try container.decodeIfPresent(CropArea.self, forKey: .cropArea)
    videoId = try container.decodeIfPresent(String.self, forKey: .videoId)
    resourceType = try container.decodeIfPresent(String.self, forKey: .resourceType)
    playCtrl = try container.decodeIfPresent(PlayCtrl.self, forKey: .playCtrl)
    hotValue = try container.decodeIfPresent(Int.self, forKey: .hotValue)
    playUrl = try container.decodeIfPresent(String.self, forKey: .playUrl)
    previewUrl = try container.decodeIfPresent(String.self, forKey: .previewUrl)
    resourceId = try container.decodeIfPresent(Int.self, forKey: .resourceId)
    duration = try container.decodeIfPresent(Duration.self, forKey: .duration)
  }

}

struct MetroList: Codable {

  enum CodingKeys: String, CodingKey {
    case type
    case metroUniqueId = "metro_unique_id"
    case allowInsertAbove = "allow_insert_above"
    case style
    case trackingData = "tracking_data"
    case metroId = "metro_id"
//    case trackingParams = "tracking_params"
    case link
    case metroData = "metro_data"
    case aliasName = "alias_name"
  }

  var type: String?
  var metroUniqueId: String?
  var allowInsertAbove: Int?
  var style: LayoutConfig?
  var trackingData: TrackingData?
  var metroId: Int?
    /*
    "tracking_params": {
       "data_source": []
    }
     var trackingParams: 数据暂时用不上
    */
  var link: String?
  var metroData: MetroData?
  var aliasName: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    type = try container.decodeIfPresent(String.self, forKey: .type)
    metroUniqueId = try container.decodeIfPresent(String.self, forKey: .metroUniqueId)
    allowInsertAbove = try container.decodeIfPresent(Int.self, forKey: .allowInsertAbove)
    style = try container.decodeIfPresent(LayoutConfig.self, forKey: .style)
    trackingData = try container.decodeIfPresent(TrackingData.self, forKey: .trackingData)
    metroId = try container.decodeIfPresent(Int.self, forKey: .metroId)
    link = try container.decodeIfPresent(String.self, forKey: .link)
    metroData = try container.decodeIfPresent(MetroData.self, forKey: .metroData)
    aliasName = try container.decodeIfPresent(String.self, forKey: .aliasName)
  }

}

struct ModalList: Codable {

  enum CodingKeys: String, CodingKey {
    case data
    case trackingData = "tracking_data"
  }

  var data: DataConfig?
  var trackingData: TrackingData?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    data = try container.decodeIfPresent(DataConfig.self, forKey: .data)
    trackingData = try container.decodeIfPresent(TrackingData.self, forKey: .trackingData)
  }

}

struct Padding: Codable {

  enum CodingKeys: String, CodingKey {
    case left
    case right
    case top
    case bottom
  }

  var left: Float?
  var right: Float?
  var top: Float?
  var bottom: Float?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    left = try container.decodeIfPresent(Float.self, forKey: .left)
    right = try container.decodeIfPresent(Float.self, forKey: .right)
    top = try container.decodeIfPresent(Float.self, forKey: .top)
    bottom = try container.decodeIfPresent(Float.self, forKey: .bottom)
  }

}

struct CardBodyParams: Codable {

  enum CodingKeys: String, CodingKey {
    case videoCover = "video_cover"
    case dataId = "data_id"
    case num
    case linkageVideoId = "linkage_video_id"
    case title
    case footerLeftText = "footer_left_text"
    case adMaterial = "ad_material"
  }

    var videoCover: [EmptyConfig]?
  var dataId: Int?
  var num: Int?
  var linkageVideoId: Int?
  var title: String?
  var footerLeftText: String?
  var adMaterial: AdMaterial?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    videoCover = try container.decodeIfPresent([EmptyConfig].self, forKey: .videoCover)
    dataId = try container.decodeIfPresent(Int.self, forKey: .dataId)
    num = try container.decodeIfPresent(Int.self, forKey: .num)
    linkageVideoId = try container.decodeIfPresent(Int.self, forKey: .linkageVideoId)
    title = try container.decodeIfPresent(String.self, forKey: .title)
    footerLeftText = try container.decodeIfPresent(String.self, forKey: .footerLeftText)
    adMaterial = try container.decodeIfPresent(AdMaterial.self, forKey: .adMaterial)
  }

}

struct PlayCtrl: Codable {

  enum CodingKeys: String, CodingKey {
    case needWifi = "need_wifi"
    case needWifiPreload = "need_wifi_preload"
    case autoplayTimes = "autoplay_times"
    case needCellular = "need_cellular"
    case autoplay
  }

  var needWifi: Bool?
  var needWifiPreload: Bool?
  var autoplayTimes: Int?
  var needCellular: Bool?
  var autoplay: Bool?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    needWifi = try container.decodeIfPresent(Bool.self, forKey: .needWifi)
    needWifiPreload = try container.decodeIfPresent(Bool.self, forKey: .needWifiPreload)
    autoplayTimes = try container.decodeIfPresent(Int.self, forKey: .autoplayTimes)
    needCellular = try container.decodeIfPresent(Bool.self, forKey: .needCellular)
    autoplay = try container.decodeIfPresent(Bool.self, forKey: .autoplay)
  }

}


struct Right: Codable {

  enum CodingKeys: String, CodingKey {
    case text
  }

  var text: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    text = try container.decodeIfPresent(String.self, forKey: .text)
  }

}

struct SeparatorLine: Codable {

  enum CodingKeys: String, CodingKey {
    case bottom
    case top
  }

  var bottom: SeparatorLineConfig?
  var top: SeparatorLineConfig?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    bottom = try container.decodeIfPresent(SeparatorLineConfig.self, forKey: .bottom)
    top = try container.decodeIfPresent(SeparatorLineConfig.self, forKey: .top)
  }

}

struct Tags: Codable {

  enum CodingKeys: String, CodingKey {
    case id
    case link
    case title
  }

  var id: Int?
  var link: String?
  var title: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    id = try container.decodeIfPresent(Int.self, forKey: .id)
    link = try container.decodeIfPresent(String.self, forKey: .link)
    title = try container.decodeIfPresent(String.self, forKey: .title)
  }

}

struct TrackingParams: Codable {

  enum CodingKeys: String, CodingKey {
    case dataSource = "data_source"
    case isAd = "is_ad"
  }

  var dataSource: TrackingDataSource?
  var isAd: Int?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    dataSource = try container.decodeIfPresent(TrackingDataSource.self, forKey: .dataSource)
    isAd = try container.decodeIfPresent(Int.self, forKey: .isAd)
  }

}


// MARK: done
struct HomePageConfig: Codable {

  enum CodingKeys: String, CodingKey {
    case floatEntrance = "float_entrance"
    case pageInfo = "page_info"
    case modalList = "modal_list"
    case cardList = "card_list"
  }

    var floatEntrance: [String]?
  var pageInfo: PageInfo?
  var modalList: [ModalList]?
  var cardList: [CardListConfig]?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      floatEntrance = try container.decodeIfPresent([String].self, forKey: .floatEntrance)
    pageInfo = try container.decodeIfPresent(PageInfo.self, forKey: .pageInfo)
    modalList = try container.decodeIfPresent([ModalList].self, forKey: .modalList)
    cardList = try container.decodeIfPresent([CardListConfig].self, forKey: .cardList)
  }

}

struct PageInfo: Codable {

  enum CodingKeys: String, CodingKey {
    case pageId = "page_id"
    case showTheEnd = "show_the_end"
    case trackingData = "tracking_data"
    case enableShare = "enable_share"
    case pageLabel = "page_label"
    case baseLink = "base_link"
    case title
  }

  var pageId: Int?
  var showTheEnd: Bool?
  var trackingData: TrackingData?
  var enableShare: Bool?
  var pageLabel: String?
  var baseLink: String?
  var title: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    pageId = try container.decodeIfPresent(Int.self, forKey: .pageId)
    showTheEnd = try container.decodeIfPresent(Bool.self, forKey: .showTheEnd)
    trackingData = try container.decodeIfPresent(TrackingData.self, forKey: .trackingData)
    enableShare = try container.decodeIfPresent(Bool.self, forKey: .enableShare)
    pageLabel = try container.decodeIfPresent(String.self, forKey: .pageLabel)
    baseLink = try container.decodeIfPresent(String.self, forKey: .baseLink)
    title = try container.decodeIfPresent(String.self, forKey: .title)
  }
}


struct CardListConfig: Codable {

  enum CodingKeys: String, CodingKey {
    case specialPos = "special_pos"
    case cardId = "card_id"
    case allowInsertAbove = "allow_insert_above"
    case type
    case interaction
    case cardData = "card_data"
    case createSource = "create_source"
    case allowInsertCard = "allow_insert_card"
    case style
    case cardUniqueId = "card_unique_id"
    case trackingData = "tracking_data"
  }

  var specialPos: String?
  var cardId: Int?
  var allowInsertAbove: Int?
  var type: String?
  var interaction: Interaction?
  var cardData: CardData?
  var createSource: String?
  var allowInsertCard: Int?
  var style: LayoutConfig?
  var cardUniqueId: String?
  var trackingData: TrackingData?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    specialPos = try container.decodeIfPresent(String.self, forKey: .specialPos)
    cardId = try container.decodeIfPresent(Int.self, forKey: .cardId)
    allowInsertAbove = try container.decodeIfPresent(Int.self, forKey: .allowInsertAbove)
    type = try container.decodeIfPresent(String.self, forKey: .type)
    interaction = try container.decodeIfPresent(Interaction.self, forKey: .interaction)
    cardData = try container.decodeIfPresent(CardData.self, forKey: .cardData)
    createSource = try container.decodeIfPresent(String.self, forKey: .createSource)
    allowInsertCard = try container.decodeIfPresent(Int.self, forKey: .allowInsertCard)
    style = try container.decodeIfPresent(LayoutConfig.self, forKey: .style)
    cardUniqueId = try container.decodeIfPresent(String.self, forKey: .cardUniqueId)
    trackingData = try container.decodeIfPresent(TrackingData.self, forKey: .trackingData)
  }

}


struct LayoutConfig: Codable {
    
    enum CodingKeys: String, CodingKey {
        case separatorLine = "separator_line"
        case background
        case padding
        case tpl_label
        case acrossColumn = "across_column"
    }
    
    var separatorLine: SeparatorLine?
    var background: Background?
    var padding: Padding?
    var tpl_label: String?
    var acrossColumn: Bool?
    
    
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        separatorLine = try container.decodeIfPresent(SeparatorLine.self, forKey: .separatorLine)
        background = try container.decodeIfPresent(Background.self, forKey: .background)
        padding = try container.decodeIfPresent(Padding.self, forKey: .padding)
        tpl_label = try container.decodeIfPresent(String.self, forKey: .tpl_label)
        acrossColumn = try container.decodeIfPresent(Bool.self, forKey: .acrossColumn)
    }
    
}

struct CardHeaderFooterConfig: Codable {

  enum CodingKeys: String, CodingKey {
    case center
    case left
    case right
    case style
  }

    //center left right 暂时不知晓其内部的数据结构是怎么样
    var center: [EmptyConfig]?
    var left: [EmptyConfig]?
    var right: [EmptyConfig]?
  var style: LayoutConfig?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      center = try container.decodeIfPresent([EmptyConfig].self, forKey: .center)
      left = try container.decodeIfPresent([EmptyConfig].self, forKey: .left)
      right = try container.decodeIfPresent([EmptyConfig].self, forKey: .right)
    style = try container.decodeIfPresent(LayoutConfig.self, forKey: .style)
  }
}

struct MetroFooterConfig: Codable {
    enum CodingKeys: String, CodingKey {
      case left
      case right
    }
    
    var left: MetroLeftRightConfig?
    var right: MetroLeftRightConfig?
    
    init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: CodingKeys.self)
        left = try container.decodeIfPresent(MetroLeftRightConfig.self, forKey: .left)
        right = try container.decodeIfPresent(MetroLeftRightConfig.self, forKey: .right)
    }
}

struct MetroLeftRightConfig: Codable {
    enum CodingKeys: String, CodingKey {
      case text
      case link
    }
    
    var text: String?
    var link: String?
    
    init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: CodingKeys.self)
        text = try container.decodeIfPresent(String.self, forKey: .text)
        link = try container.decodeIfPresent(String.self, forKey: .link)
    }
}


//只是用来占位的
struct EmptyConfig: Codable {

    
    init(from decoder: Decoder) throws {

    }
}
