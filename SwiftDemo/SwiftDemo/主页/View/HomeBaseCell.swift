//
//  HomeBaseCell.swift
//  SwiftDemo
//
//  Created by 胡斐 on 2018/4/10.
//  Copyright © 2018年 DEMO. All rights reserved.
//

import UIKit

class HomeBaseCell: UITableViewCell {
    
    var itemModel:HomeItemModel?
    
    static func cellForTable(tableView:UITableView, identifier:String, indexPath:IndexPath) -> HomeBaseCell{
    
        let cell:HomeBaseCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! HomeBaseCell
        if cell == nil {
            return HomeBaseCell.init()
        }
        cell.selectionStyle = .none
        return cell
    }
    
}
