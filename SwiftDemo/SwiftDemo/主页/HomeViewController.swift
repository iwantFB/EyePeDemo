//
//  HomeViewController.swift
//  SwiftDemo
//
//  Created by 夜站 on 2018/4/3.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit
import SnapKit


private let tabInfo = "tabInfo"
private let tabList = "tabList"

class HomeViewController : UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var naviTopView : HomeNaviCollectionView!
    private let cellIDArr : Array = ["horizontalScrollCard","textCard","followCard","videoSmallCard","briefCard","squareCardCollection","videoCollectionWithBrief","DynamicInfoCard"]
    
    private let tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH, height: 300), style: UITableViewStyle.plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        p_setupUI()
    }
    
    private func p_setupUI() {
        
        self.view.backgroundColor = UIColor.white
        
        let flowLayout = UICollectionViewFlowLayout.init()
        flowLayout.itemSize = CGSize.init(width: 60, height: 38)
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 0;
        
        naviTopView = HomeNaviCollectionView.init(frame: CGRect.init(x: 40, y: STATUSBAR_HEIGHT, width: SCREEN_WIDTH - 80.0, height: 40), collectionViewLayout: flowLayout)
        (self.navigationController as! FHNavigationViewController).naviBarView.addSubview(naviTopView)
        
        self.view.addSubview(tableView)
        tableView.register(SquareCardCollectionCell.self, forCellReuseIdentifier: "squareCardCollectionCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.backgroundView?.backgroundColor = UIColor.blue
        tableView.snp.makeConstraints { (make) in
            make.top.equalTo(self.view).offset(NAVIGATIONBAR_HEIGHT)
            make.left.right.bottom.equalTo(self.view)
        }

        getNetData()
    }
    
    //MARK - delegate,datasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3;
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:SquareCardCollectionCell = tableView.dequeueReusableCell(withIdentifier: "squareCardCollectionCell", for: indexPath) as! SquareCardCollectionCell
        cell.selectionStyle = .none
        cell.backgroundColor = UIColor.blue
        return cell
    }
    
    //MARK- network
    private func getNetData()  {
        let urlStr = "https://baobab.kaiyanapp.com/api/v5/index/tab/list"
        NetworkTool.get(urlStr, parameters: nil) { (flag, json, cool) in
            
            let result:Dictionary<String,AnyObject> = json.dictionaryObject! as Dictionary<String,AnyObject>
            self.naviTopView.itemList = (result[tabInfo]![tabList])as!Array<Any>
        }
    }
    
}
