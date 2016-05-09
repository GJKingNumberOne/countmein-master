//
//  FindViewController.swift
//  countmein
//
//  Created by 华瑞金科 on 16/5/6.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class FindViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blueColor()
        
        let setBtn = UIBarButtonItem(title: "设置", style: .Plain, target: self, action: #selector(FindViewController.setAction))
        navigationItem.leftBarButtonItem = setBtn
    }

    func setAction() {
        let vc = NetworkingSetViewController()
        navigationController?.pushViewController(vc, animated: true)
        
    }

}
