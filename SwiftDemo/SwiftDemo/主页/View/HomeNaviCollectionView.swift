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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        p_setupUI()
    }
    
    func p_setupUI()  {
        titleLb.font = UIFont.systemFont(ofSize: 12)
        titleLb.textAlignment = .center
        self.contentView.addSubview(titleLb)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        titleLb.frame = self.bounds
    }
}

typealias closureBlock = (Int,String) -> Void

class HomeNaviCollectionView : UICollectionView,UICollectionViewDelegate,UICollectionViewDataSource {
    //传值闭包
    var postValueBlock:closureBlock?
    var currentUrl:String{
        get{
            let dic:Dictionary<String,Any> = itemList[currentIndex] as! Dictionary<String,Any>
            return dic[apiUrl] as! String
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
        }
    }
    
    var itemList : Array<Any>!{
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
        
        indexView.backgroundColor = UIColor.purple
        self.addSubview(indexView)
    }
    
    private func moveIndexView(item:Int, animation:Bool)  {
        
        let newFrame = CGRect.init(x: 60 * item, y: 38, width: 60, height: 2)
        let duration = animation ? 0.2:0.0
        UIView.animate(withDuration: duration) {
            self.indexView.frame = newFrame
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (itemList != nil) ? itemList!.count : 0;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeNaciCollectionCell", for: indexPath) as! HomeNaciCollectionCell
        
        let dic:Dictionary<String,Any> = itemList[indexPath.item] as! Dictionary<String,Any>
        
        cell.titleLb.text = (dic[name] as! String)
        cell.titleLb.textColor = indexPath.item == currentIndex ? UIColor.gray : UIColor.black
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        
        let item = indexPath.item
        guard currentIndex != item else {
            return
        }
        self.currentIndex = item
        let dic:Dictionary<String,Any> = itemList[item] as! Dictionary<String,Any>
        
        if postValueBlock != nil{
            postValueBlock!(indexPath.item,(dic[apiUrl] as! String))
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
