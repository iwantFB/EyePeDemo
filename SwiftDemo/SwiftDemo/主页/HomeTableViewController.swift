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
            getHomeData(url: url!)
        }
    }
    
    private let itemList = NSMutableArray.init()
    private var totalCount = 0;
    private let cellIDArr : Array = ["horizontalScrollCard","textCard","followCard","videoSmallCard","briefCard","squareCardCollection","videoCollectionWithBrief","DynamicInfoCard"]
    private let tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH, height: 300), style: UITableViewStyle.plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        p_setupUI()
    }
    
    func p_setupUI()  {
        self.view.addSubview(tableView)
        tableView.register(SquareCardCollectionCell.self, forCellReuseIdentifier: "squareCardCollectionCell")
        tableView.register(TextCardCell.self, forCellReuseIdentifier: "textCard")
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
    private func getHomeData(url:String)  {
        NetworkTool.get(url, parameters: nil) { (flag, json, cool) in
            
//            let data = try? JSONSerialization.data(withJSONObject: json, options: [])
//            let jsonString = String(data: data!, encoding: String.Encoding.utf8)
            let result = [HomeItemModel].deserialize(from: json.rawString(), designatedPath:".itemList")
            
            self.totalCount += result!.count
            self.itemList.addObjects(from: result!)
            self.tableView.reloadData()
        }
    }
}
