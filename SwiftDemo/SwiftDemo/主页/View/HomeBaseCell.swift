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
    
        var id = identifier
        if identifier != "squareCardCollection"{
            id = "textCard"
        }
        let cell:HomeBaseCell = tableView.dequeueReusableCell(withIdentifier: id, for: indexPath) as! HomeBaseCell
        cell.selectionStyle = .none
        return cell
    }
    
}
