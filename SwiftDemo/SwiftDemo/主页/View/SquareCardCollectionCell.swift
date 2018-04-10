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

class SquareCardCollectionCell : UITableViewCell,FSPagerViewDataSource,FSPagerViewDelegate  {

    var dataDic = Dictionary<String,Dictionary<String,Any>>(){
        didSet{
//            headerSubTitlelb.text = 
            headerTitlelb.text = "开眼今日编辑精选"
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
        
        let cellHeight:Float = 300.0
        pagerView.dataSource = self
        pagerView.delegate = self
        pagerView.itemSize = CGSize.init(width: SCREEN_WIDTH - 30, height: CGFloat(cellHeight))
        pagerView.interitemSpacing = 10
        pagerView.register(UINib.init(nibName: "SquareCardCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        self.addSubview(pagerView)
        pagerView.snp.makeConstraints { (make) in
            make.top.equalTo(headerTitlelb.snp.bottom).offset(10)
            make.left.right.bottom.equalTo(self)
            make.height.equalTo(cellHeight)
        }
        
    }
    
    public func numberOfItems(in pagerView: FSPagerView) -> Int {
        return 5
    }
    
    public func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell:SquareCardCollectionViewCell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index) as! SquareCardCollectionViewCell
        
        cell.videoImageView.image = UIImage.init(named: "beauty")
        cell.headerTitleLb.text = "wow"
        cell.headerDescriptionLb.text = "cool man"
        return cell
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
