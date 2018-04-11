//
//  SquareCardCollectionViewCell.swift
//  SwiftDemo
//
//  Created by 夜站 on 2018/4/3.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit
import FSPagerView

class SquareCardCollectionViewCell : FSPagerViewCell {
 
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var headerTitleLb: UILabel!
    @IBOutlet weak var headerDescriptionLb: UILabel!
    
    // MARK- action
    @IBAction func shareBtnAction(_ sender: UIButton) {
        print("弹出分享弹框")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
