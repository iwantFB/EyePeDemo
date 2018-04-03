//
//  HomeNaviCollectionView.swift
//  SwiftDemo
//
//  Created by 夜站 on 2018/4/3.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit

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

class HomeNaviCollectionView : UICollectionView,UICollectionViewDelegate,UICollectionViewDataSource {

    let indexView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 60, height: 2))
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        
        self.register(HomeNaciCollectionCell.self, forCellWithReuseIdentifier: "HomeNaciCollectionCell")
        
        self.delegate = self
        self.dataSource = self
        
        indexView.backgroundColor = UIColor.purple
        self.addSubview(indexView)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeNaciCollectionCell", for: indexPath) as! HomeNaciCollectionCell
        cell.titleLb.text = "\(indexPath.item)"
        cell.backgroundColor = UIColor.blue
        cell.titleLb.textColor = cell.isSelected ? UIColor.red : UIColor.black
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        let cell = collectionView.cellForItem(at: indexPath)
        indexView.center = CGPoint.init(x: (cell?.center.x)!, y: 39)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
