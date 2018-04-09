//
//  HomeTableViewController.swift
//  SwiftDemo
//
//  Created by 夜站 on 2018/4/9.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit

class HomeTableViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource {
    
    private let itemList = NSMutableArray.init()
    private var totalCount = 0;
    private let cellIDArr : Array = ["horizontalScrollCard","textCard","followCard","videoSmallCard","briefCard","squareCardCollection","videoCollectionWithBrief","DynamicInfoCard"]
    private let tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH, height: 300), style: UITableViewStyle.plain)
    
    
    func p_setupUI()  {
        self.view.addSubview(tableView)
        tableView.register(SquareCardCollectionCell.self, forCellReuseIdentifier: "squareCardCollectionCell")
        tableView.register(TextCardCell.self, forCellReuseIdentifier: "textCard")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.snp.makeConstraints { (make) in
            make.top.equalTo(self.view).offset(NAVIGATIONBAR_HEIGHT)
            make.left.right.bottom.equalTo(self.view)
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
        
        var cell:UITableViewCell
        
        let row = indexPath.row
        if row % 2 == 0 {
            cell = tableView.dequeueReusableCell(withIdentifier: "squareCardCollectionCell", for: indexPath)
        }else{
            cell = tableView.dequeueReusableCell(withIdentifier: "textCard", for: indexPath)
            (cell as! TextCardCell).titleLb.text = "猜你喜欢"
        }
        cell.selectionStyle = .none
        return cell
    }
    
    //MARK- network
    private func getHomeData()  {
        let urlStr = "https://baobab.kaiyanapp.com/api/v5/index/tab/discovery"
        NetworkTool.get(urlStr, parameters: nil) { (flag, json, cool) in
            let result:Dictionary<String,AnyObject> = json.dictionaryObject! as Dictionary<String,AnyObject>
            self.totalCount += result["count"] as! Int
            self.itemList.addObjects(from: result["itemList"] as! [Any])
            self.tableView.reloadData()
        }
    }
}
