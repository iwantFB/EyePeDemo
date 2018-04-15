//
//  HomeTableViewController.swift
//  SwiftDemo
//
//  Created by 夜站 on 2018/4/9.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit

class HomeTableViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource {
    
    //请求参数
    var url:String? {
        didSet{
            guard url != nil else {
                return
            }
            
            getHomeData(url: url!)
        }
    }
    
    private let itemList = NSMutableArray.init()
    private var totalCount = 0;
    private let cellIdDic : Dictionary<String,AnyClass> = [
        "horizontalScrollCard":HorizontalScrollCardCell.self,
        "textCard":TextCardCell.self,
        "followCard":FollowCardCell.self,
        "videoSmallCard":VideoSmallCardCell.self,
        "briefCard":BriefCardCell.self,
        "squareCardCollection":SquareCardCollectionCell.self,
        "videoCollectionWithBrief":VideoCollectionWithBriefCell.self,
        "DynamicInfoCard":DynamicInfoCardCell.self,
        "banner":HomeBannerCell.self
        
    ]
    private let tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH, height: 300), style: UITableViewStyle.plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        p_setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if url != nil {
            tableView.reloadData()
        }
    }
    
    func p_setupUI()  {
        self.view.addSubview(tableView)
        for cellReuseIdentifier in cellIdDic.keys {
            tableView.register(cellIdDic[cellReuseIdentifier], forCellReuseIdentifier: cellReuseIdentifier)
        }

        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.snp.makeConstraints { (make) in
            make.edges.equalTo(self.view)
        }
    }
    
    //MARK - delegate,datasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return totalCount;
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        let itemModel = self.itemList[row] as! HomeItemModel
        let cell = HomeBaseCell.cellForTable(tableView: tableView, identifier: itemModel.type, indexPath: indexPath)
        cell.itemModel = itemModel
        return cell
    }
    
    //MARK- network
    private func getHomeData(url:String)  {
        NetworkTool.get(url, parameters: nil) { (flag, json, cool) in
            
            guard flag else {return}
            let result = [HomeItemModel].deserialize(from: json.rawString(), designatedPath:".itemList")
            
            self.totalCount += result!.count
            self.itemList.addObjects(from: result! as! [HomeItemModel])
            self.tableView.reloadData()
        }
    }
}
