//
//  HomeNaviCollectionView.swift
//  SwiftDemo
//
//  Created by 夜站 on 2018/4/3.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit
import SwiftyJSON

private let apiUrl = "apiUrl"
private let id = "id"
private let name = "name"

class HomeNaciCollectionCell : UICollectionViewCell {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var titleLb = UILabel.init()
    var indexView: UIImageView = UIImageView(image: UIImage(named: "et_tab_indicator_16x16_"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        p_setupUI()
    }
    
    func p_setupUI()  {
        titleLb.font = UIFont.systemFont(ofSize: 12)
        titleLb.textAlignment = .left
        titleLb.textColor = .black
        
        self.contentView.addSubview(indexView)
        self.contentView.addSubview(titleLb)
        
        self.indexView.snp.makeConstraints { make in
            make.leading.centerY.equalTo(self.contentView)
            make.trailing.equalTo((titleLb.snp.leading))
            make.size.equalTo(CGSize(width: 16, height: 16))
        }
        self.titleLb.snp.makeConstraints { make in
            make.top.bottom.trailing.equalTo(self.contentView)
        }
    }
}

typealias closureBlock = (Int,String) -> Void

class HomeNaviCollectionView : UICollectionView,UICollectionViewDelegate,UICollectionViewDataSource {
    //传值闭包
    var postValueBlock:closureBlock?
    var currentUrl:String{
        get{
            let navi = itemList[currentIndex]
            return navi.url ?? ""
        }
    }
    
    var currentIndex =  0{
        didSet{
            guard currentIndex >= 0 else {
                return
            }
            self.scrollToItem(at: IndexPath.init(row: currentIndex, section: 0), at: .centeredHorizontally, animated: true)
            moveIndexView(item: currentIndex, animation: true)
            self.reloadData()
            
            let navi = itemList[currentIndex]
            //只要这个值改变了，就要通知外面
            if let action = postValueBlock {
                action(currentIndex,navi.url ?? "")
            }
            
            print("index changed")
        }
    }
    
    var itemList : [NavList] = []{
        didSet{
            self.reloadData()
        }
    }
    
    private let indexView = UIView.init(frame: CGRect.init(x: 0, y: 38, width: 60, height: 2))
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {

        super.init(frame: frame, collectionViewLayout: layout)
        
        let flowLayout = layout as! UICollectionViewFlowLayout
        flowLayout.itemSize = CGSize.init(width: 60, height: 38)
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 0;
        
        self.register(HomeNaciCollectionCell.self, forCellWithReuseIdentifier: "HomeNaciCollectionCell")
        
        self.delegate = self
        self.dataSource = self
        
        self.showsHorizontalScrollIndicator = false
        self.backgroundColor = UIColor.clear
    }
    
    private func moveIndexView(item:Int, animation:Bool)  {
        
        let newFrame = CGRect.init(x: 60 * item, y: 38, width: 60, height: 2)
        let duration = animation ? 0.2:0.0
        UIView.animate(withDuration: duration) {
            self.indexView.frame = newFrame
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemList.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeNaciCollectionCell", for: indexPath) as! HomeNaciCollectionCell
        
        let naviConfig = itemList[indexPath.item]
        
        cell.titleLb.text = naviConfig.title
        cell.indexView.isHidden = indexPath.item != currentIndex
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        
        let item = indexPath.item
        guard currentIndex != item else {
            return
        }
        self.currentIndex = item
        let navi = itemList[item]
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
