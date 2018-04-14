 //
//  squareCardCollectionCell.swift
//  SwiftDemo
//
//  Created by 夜站 on 2018/4/3.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit
import FSPagerView

fileprivate let header = "header"
fileprivate let header_title = "title"
fileprivate let header_subTitle = "subTitle"
fileprivate let itemList = "itemList"

class SquareCardCollectionCell : HomeBaseCell,FSPagerViewDataSource,FSPagerViewDelegate  {
    
    override var itemModel: HomeItemModel?{
        didSet{
            if itemModel?.data?.dataType == "banner2"{
            }
            headerTitlelb.text = itemModel?.data?.header?.title
            headerSubTitlelb.text = itemModel?.data?.header?.subTitle
            self.itemList = itemModel?.data?.itemList
        }
    }
    
    var itemList:Array<HomeItemModel>?{
        didSet{
            let subItemType = itemList?.first?.type
            let cellHeight:Float =  subItemType == "banner2" ? 180.0 : 260.0
            pagerView.itemSize = CGSize.init(width: SCREEN_WIDTH - 30, height: CGFloat(cellHeight))
            pagerView.snp.makeConstraints { (make) in
                make.top.equalTo(headerTitlelb.snp.bottom).offset(10)
                make.left.right.bottom.equalTo(self)
                make.height.equalTo(cellHeight)
            }
            pagerView.reloadData()
        }
    }
    
    private let pagerView = FSPagerView.init()
    private let headerTitlelb = UILabel()
    private let headerSubTitlelb = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        p_setupUI()
    }
    
    private func p_setupUI(){
        
        self.addSubview(headerTitlelb)
        self.addSubview(headerSubTitlelb)
        headerSubTitlelb.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(30)
            make.left.equalTo(self).offset(15)
        }
        
        headerTitlelb.snp.makeConstraints { (make) in
            make.top.equalTo(headerSubTitlelb.snp.bottom)
            make.leading.equalTo(headerSubTitlelb)
        }
        
        pagerView.dataSource = self
        pagerView.delegate = self
        pagerView.interitemSpacing = 10
        pagerView.register(UINib.init(nibName: "SquareCardCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        self.addSubview(pagerView)
        
    }
    
    public func numberOfItems(in pagerView: FSPagerView) -> Int {
        guard (itemList?.count)! > 0 else {
            return 0
        }
        return (itemList?.count)!
    }
    
    public func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell:SquareCardCollectionViewCell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index) as! SquareCardCollectionViewCell
        
        let subItemModel = itemList![index]
        let imageURLStr = subItemModel.type == "banner2" ? subItemModel.data?.image : (subItemModel.data?.content?.data.cover?.feed)!
        cell.videoImageView.sd_setImage(with: URL.init(string: imageURLStr!), completed: nil)

        guard subItemModel.type != "banner2" else {
            cell.infoContentView.isHidden = true
            cell.infoContentViewConstraintHeight.constant = 0;
            return cell
        }
        
        cell.infoContentView.isHidden = false
        cell.infoContentViewConstraintHeight.constant = 80;
        let iconURLStr = (subItemModel.data?.header?.icon)!
        cell.iconImageView.sd_setImage(with: URL.init(string: iconURLStr), completed: nil)
        cell.headerTitleLb.text = subItemModel.data?.header?.title
        cell.headerDescriptionLb.text = subItemModel.data?.header?.description
        return cell
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
