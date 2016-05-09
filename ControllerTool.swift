//
//  ControllerTool.swift
//  countmein
//
//  Created by 华瑞金科 on 16/5/9.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class ControllerTool: NSObject {
    class func chooseRootViewController() {
        let userDefaults = NSUserDefaults.standardUserDefaults()
        // 检查沙盒中的版本号，如果存储的版本号和本次版本号不同或者版本号不存在，显示新特性界面，并保存mainBundle里面的版本号，比如1789
        let lastVersion = userDefaults.stringForKey(String(kCFBundleVersionKey)) ?? ""
        let currentVersion = NSBundle.mainBundle().infoDictionary![String(kCFBundleVersionKey)] as! String
        
        let window = UIApplication.sharedApplication().keyWindow
        
        if lastVersion == currentVersion {
            window?.rootViewController = TabBarViewController()
        } else {
            window?.rootViewController = UIStoryboard(name: "NewFeature", bundle: nil).instantiateViewControllerWithIdentifier("NewFeature") as! NewFeatureViewController
            userDefaults.setObject(currentVersion, forKey: String(kCFBundleVersionKey))
            userDefaults.synchronize()
        }
    }

}
