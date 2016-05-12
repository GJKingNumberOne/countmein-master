//
//  FindViewController.swift
//  countmein
//
//  Created by 华瑞金科 on 16/5/6.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class FindViewController: BaseViewController {

    var judgeCityString: String?
    var repaymentMethod: String?
    var monthRateLabel: String?
    var limitLabel: String?
    
    
    
    var maxAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        let setBtn = UIBarButtonItem(title: "设置", style: .Plain, target: self, action: #selector(FindViewController.setAction))
        navigationItem.leftBarButtonItem = setBtn
        
        
        
        ApiClient.sharedInstance.POST(api:Api.loanProduct, parameters: nil, successHandler: { (json) in
            
            let productJSON = json["data", "product", 0]
            self.judgeCityString = productJSON["product_max_amount"].stringValue
            self.repaymentMethod = productJSON["product_repayment_method"].stringValue
            self.monthRateLabel = productJSON["product_month_rate"].stringValue
            self.limitLabel = productJSON["product_limit"].stringValue
            
            
        })
            
            print(self.judgeCityString)
        print(repaymentMethod)
        print(monthRateLabel)
        print(limitLabel)
    
    }

    func setAction() {
        let vc = NetworkingSetViewController()
        navigationController?.pushViewController(vc, animated: true)
        
    }

    
    
    
    
}

extension FindViewController:UITableViewDelegate, UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("findCell") as! FindTableViewCell
        cell.label.text = self.judgeCityString
        
        return cell
        
    }
    
}



