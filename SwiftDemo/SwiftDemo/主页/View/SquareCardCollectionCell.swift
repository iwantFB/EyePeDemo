//
//  squareCardCollectionCell.swift
//  SwiftDemo
//
//  Created by 夜站 on 2018/4/3.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit

class SquareCardCollectionCell : UITableViewCell ,UICollectionViewDelegate, UICollectionViewDataSource {

    private var cardCollectionView:UICollectionView!
    private let headerTitlelb = UILabel()
    private let headerSubTitlelb = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        p_setupUI()
    }
    
    private func p_setupUI(){
        
//        headerSubTitlelb.text = "4月4号"
//        headerTitlelb.text = "开眼今日编辑精选"
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
        
        let flowLayout = UICollectionViewFlowLayout.init()
        let itemHeight = 300;
        flowLayout.itemSize = CGSize.init(width: Int(SCREEN_WIDTH - 30), height: itemHeight)
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 10;
        cardCollectionView = UICollectionView.init(frame: CGRect.zero, collectionViewLayout: flowLayout)
        cardCollectionView.contentInset = UIEdgeInsets.init(top: 0, left: 15, bottom: 0, right: 15)
        self.addSubview(cardCollectionView)
        cardCollectionView.snp.makeConstraints { (make) in
            make.left.right.bottom.equalTo(self)
            make.top.equalTo(headerTitlelb.snp.bottom)
            make.height.equalTo(itemHeight)
        }
        cardCollectionView.register(UINib.init(nibName: "SquareCardCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SquareCardCollectionViewCell")
        cardCollectionView.delegate = self
        cardCollectionView.dataSource = self
        cardCollectionView.isPagingEnabled = true
    }
    
    // MARK -
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SquareCardCollectionViewCell", for: indexPath)
        cell.backgroundColor = UIColor.blue
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
