//
//  VideoCollectionWithBriefCell.swift
//  SwiftDemo
//
//  Created by 胡斐 on 2018/4/12.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit
import FSPagerView

class VideoCollectionWithBriefCell : HomeBaseCell ,FSPagerViewDataSource,FSPagerViewDelegate{
    
    fileprivate let pagerView = FSPagerView.init()
    fileprivate let iconImageView = UIImageView.init()
    fileprivate let headerTitlelb = UILabel()
    fileprivate let headerSubTitlelb = UILabel()
    fileprivate let focusBtn = UIButton.init(type: .custom)
    
    override var itemModel: HomeItemModel?{
        didSet{
            guard itemModel?.type == "videoCollectionWithBrief" else {
                return
            }
            
            let iconStr = itemModel?.data?.header?.icon
            
            headerTitlelb.text = itemModel?.data?.header?.title
            headerSubTitlelb.text = itemModel?.data?.header?.description
            focusBtn.isSelected = (itemModel?.data?.header?.follow?.followed)!
            iconImageView.sd_setImage(with: URL.init(string: iconStr!), completed: nil)
            self.itemList = itemModel?.data?.itemList
            
        }
    }
    
    var itemList:Array<HomeItemModel>?{
        didSet{
            pagerView.reloadData()
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        focusBtn.layer.cornerRadius = 2
        focusBtn.layer.borderWidth = 1.0
        focusBtn.layer.borderColor = UIColor.black.cgColor
        focusBtn.titleLabel?.font = themeFont(fontSize: 10)
        focusBtn.setTitle("+ 关注", for: .normal)
        focusBtn.setTitle("已关注", for: .selected)
        focusBtn.addTarget(self, action: #selector(focusBtnAction(sender:)), for: .touchUpInside)
        
        headerTitlelb.font = themeFont(fontSize: 12)
        headerSubTitlelb.font = themeFont(fontSize: 10)
        
        let cellHeight:Float = 300.0
        pagerView.dataSource = self
        pagerView.delegate = self
        pagerView.itemSize = CGSize.init(width: SCREEN_WIDTH - 30, height: CGFloat(cellHeight))
        pagerView.interitemSpacing = 10
        pagerView.register(UINib.init(nibName: "SquareCardCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        
        self.contentView.addSubview(iconImageView)
        self.contentView.addSubview(headerTitlelb)
        self.contentView.addSubview(headerSubTitlelb)
        self.contentView.addSubview(focusBtn)
//        self.contentView.addSubview(pagerView)
        
        
        iconImageView.snp.makeConstraints { (make) in
            make.leftMargin.equalToSuperview().offset(15)
            make.topMargin.equalToSuperview().offset(10)
            make.width.height.equalTo(HomeCellIcon_Height)
            make.bottomMargin.equalToSuperview().offset(-10)
//            make.bottom.equalTo(pagerView.snp.top).offset(10)
        }
        
        headerTitlelb.snp.makeConstraints { (make) in
            make.top.equalTo(iconImageView)
            make.left.equalTo(iconImageView.snp.right).offset(15)
        }
        
        headerSubTitlelb.snp.makeConstraints { (make) in
            make.leading.equalTo(headerTitlelb)
            make.top.equalTo(headerTitlelb.snp.bottom).offset(5)
        }
        
        focusBtn.snp.makeConstraints { (make) in
            make.rightMargin.equalToSuperview().offset(-15)
            make.centerY.equalTo(iconImageView)
        }
        
//        pagerView.snp.makeConstraints { (make) in
//            make.top.equalTo(iconImageView.snp.bottom).offset(10)
//            make.left.right.bottom.equalTo(self)
//            make.height.equalTo(cellHeight)
//        }
    }
    
    //MARK:-action
    @objc fileprivate func focusBtnAction(sender:UIButton){
        sender.isSelected = !sender.isSelected
    }
    
    //MARK:- delegate
    public func numberOfItems(in pagerView: FSPagerView) -> Int {
        guard (itemList?.count)! > 0 else {
            return 0
        }
        return (itemList?.count)!
    }
    
    public func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell:SquareCardCollectionViewCell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index) as! SquareCardCollectionViewCell
        
        let subItemModel = itemList![index]
        let imageURLStr = (subItemModel.data?.cover?.feed)!
        cell.videoImageView.sd_setImage(with: URL.init(string: imageURLStr), completed: nil)
        cell.headerTitleLb.text = subItemModel.data?.titlePgc
        cell.headerDescriptionLb.text = "#" + (subItemModel.data?.category)!
        return cell
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
