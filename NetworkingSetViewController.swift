//
//  NetworkingSetViewController.swift
//  countmein
//
//  Created by 华瑞金科 on 16/5/6.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class NetworkingSetViewController: BaseViewController {

    weak var tableView: UITableView!
    var selectedIndex = 0
    
    let titles = ["正式环境", "开发环境", "测试环境"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        
        
        view.addSubview(tableView)
        
    }

}

extension NetworkingSetViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let  identifier = "networkingSetCell"
        var cell = tableView.dequeueReusableCellWithIdentifier(identifier)
        if cell == nil {
            cell = UITableViewCell(style: .Subtitle, reuseIdentifier: identifier)
        }
        cell?.textLabel?.text = titles[indexPath.row]
        
        
        if indexPath.row == selectedIndex {
            cell?.accessoryType = .Checkmark
        } else {
            cell?.accessoryType = .None
        }
        
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        let row = indexPath.row
//        var protocolType: Protocol
//        var domain: Domain
    }
    
    
}

