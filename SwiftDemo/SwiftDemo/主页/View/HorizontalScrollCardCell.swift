//
//  HorizontalScrollCard.swift
//  SwiftDemo
//
//  Created by 胡斐 on 2018/4/11.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit
import FSPagerView

class HorizontalScrollCardCell : HomeBaseCell,FSPagerViewDataSource,FSPagerViewDelegate {
    
    private let pagerView = FSPagerView.init()
    var itemList:Array<HomeItemModel>?
    
    override var itemModel: HomeItemModel?{
        didSet{
            if itemModel?.data?.dataType == "banner2"{
            }
            self.itemList = itemModel?.data?.itemList
            pagerView.reloadData()
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        p_setupUI()
    }
    
    private func p_setupUI(){
        
        pagerView.dataSource = self
        pagerView.delegate = self
        pagerView.interitemSpacing = 10
        pagerView.register(UINib.init(nibName: "SquareCardCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        self.addSubview(pagerView)
        
        let cellHeight:Float = 180.0
        pagerView.itemSize = CGSize.init(width: SCREEN_WIDTH - 30, height: CGFloat(cellHeight))
        pagerView.snp.makeConstraints { (make) in

            make.height.equalTo(cellHeight)
            make.edges.equalToSuperview().inset(UIEdgeInsets.init(top: 15, left: 0, bottom: 15, right: 0))
        }
        
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
        
        return cell
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
