//
//  CardCell.swift
//  SwiftDemo
//
//  Created by MacBook on 02/06/2022.
//  Copyright © 2022 DEMO. All rights reserved.
//

import UIKit

protocol StyleConfigProtocol {
    associatedtype T:SeparatorLineProtocol
    
    var tplLabel: String?{get}
    var padding: Padding?{get}
    var background: Background?{get}
    var separatorLine:T?{get}
    
    //存放布局的其他参数
    var extreParam: [String:Any] {get}
}

protocol CellConfigProtocol {
    associatedtype StyleType: StyleConfigProtocol
    associatedtype CardDataType: CardDataProtocol
    
    var style:StyleType?{ get }
    var interaction:Interaction?{get}
    var cardData:CardDataType?{get}
    var type: String? { get }
}

extension CellConfigProtocol {
    var cellType: String {
        type?.components(separatedBy: "_").map{ $0.capitalized }.joined() ?? "-"
    }
}

protocol CardDataProtocol {
    var header: CardHeaderFooterConfig?{ get }
    var body: CardBody?{ get }
    var footer: CardHeaderFooterConfig?{ get }
}

protocol PaddingProtocol {
    var top: Float{ get }
    var left: Float{ get }
    var bottom: Float{ get }
    var right: Float{ get }
}

protocol BackgroudProtocol {
    var color: String{ get }
}

extension BackgroudProtocol {
    var trueColor: UIColor? {
        get {
            return UIColor.color(hex: color)
        }
    }
}

protocol SeparatorLineProtocol {
    associatedtype T:SeparatorLineConfigProtocol
    
    var top: T?{ get }
    var bottom: T?{ get }
}

protocol SeparatorLineConfigProtocol {
    associatedtype T: PaddingProtocol
    
    var color: String?{ get }
    var height: Float?{ get }
    var margin: T?{ get }
}

extension SeparatorLineConfigProtocol {
    @discardableResult
    func  generate(addTo superView:UIView) -> UIView {
        let lineView = UIView()
        
        if let color = color {
            lineView.backgroundColor = UIColor.color(hex: color)
        }
        
        superView.addSubview(lineView)
        
        if let margin = margin {
            lineView.snp.makeConstraints { make in
                make.edges.equalTo(UIEdgeInsets(top: CGFloat(margin.top),
                                                left: CGFloat(margin.left),
                                                bottom: CGFloat(margin.bottom),
                                                right: CGFloat(margin.right)))
            }
        }
        
        if let height = height {
            lineView.snp.makeConstraints { make in
                make.height.equalTo(height)
            }
        }
        
        return lineView
    }
}


extension Margin: PaddingProtocol{}
extension SeparatorLineConfig: SeparatorLineConfigProtocol{}
extension Background: BackgroudProtocol{}
extension SeparatorLine:SeparatorLineProtocol{}
extension LayoutConfig: StyleConfigProtocol{
    var extreParam: [String : Any] {[:]}
}

extension CardData: CardDataProtocol {}
extension CardListConfig: CellConfigProtocol {
    
    typealias StyleType = LayoutConfig
    typealias CardDataType = CardData
}

class CardBaseCell: UITableViewCell {
    
    
    var item:CardListConfig
    
    var bannerView:HomeCardBannerView?
    var metroView:UIView?
    
    required init(configItem:CardListConfig) {
        item = configItem
//        bannerView = HomeCardBannerView(style: item.style!)
//        metroView = UIView()
        
        super.init(style: .default, reuseIdentifier: item.cellType)
        
        item.style?.configStyleView(self.contentView)
        
        //开始布局header 和 body footer
        let header = item.cardData?.header?.style
        let boby = item.cardData?.body?.metroList
        let footer = item.cardData?.footer?.style
        let headerView = header?.generate(addTo: self.contentView) ?? UIView()
        let footerView = footer?.generate(addTo: self.contentView) ?? UIView()
        
        //两种格式的视图 metro&banner
        
        self.contentView.addSubview(headerView)
        self.contentView.addSubview(footerView)
        
        
    }
    
    // MARK:
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//配置BODY
extension CardBaseCell {

    func set_metro_list(metreData: [MetroList]) -> UIView {
        
        return UIView()
    }
    
    func set_banner_list(metreData: [MetroList]) -> UIView {
        return UIView()
    }
}


//MARK: 扩展
extension MetroList {
    func generateMetroView() -> UIView {
        let view = UIView()
        guard let style = style, let tplLabl = style.tplLabel else{
            return view
        }
        
        
        
        
        return view
    }
    
}

extension StyleConfigProtocol {
    
    func configStyleView(_ target: UIView) {
        
        if let padding = padding as? PaddingProtocol {
            target.snp.makeConstraints { make in
                make.margins.equalTo(UIEdgeInsets(top: CGFloat(padding.top), left: CGFloat(padding.left), bottom: CGFloat(padding.bottom), right: CGFloat(padding.right)))
            }
        }
        if let bgColor = background?.trueColor {
            target.backgroundColor = bgColor
        }
        
        if let separator = separatorLine {
            if let top = separator.top  {
                top.generate(addTo: target)
            }
            if let bottom = separator.bottom {
                bottom.generate(addTo: target)
            }
            
        }
    }
    
    @discardableResult
    func generate(addTo superView: UIView) -> UIView? {
        let result = UIView()
        superView.addSubview(result)
        
        configStyleView(result)
        return result
    }
}
