//
//  ApiClient.swift
//  countmein
//
//  Created by 华瑞金科 on 16/5/9.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class ApiClient {

    // 单例
    static let sharedInstance = ApiClient()
    
    var protocolType = Protocol.HTTPS
    var domain = Domain.ProductionEnvironment
    
    private init() {
        
    }
    
    func POST(api api: Api, parameters: [String: AnyObject]? = nil,
                  successHandler: (JSON) -> Void,
                  failureHandler: ((ErrorType) -> Void)? = nil) {
        taskWithURLString(api: api, parameters: parameters, method: .POST, successHandler: successHandler, failureHandler: failureHandler)
    }
    
    func GET(api api: Api, parameters: [String: AnyObject]? = nil,
                 successHandler: (JSON) -> Void,
                 failureHandler: ((ErrorType) -> Void)? = nil) {
        taskWithURLString(api: api, parameters: parameters, method: .GET, successHandler: successHandler, failureHandler: failureHandler)
    }
    
    
    private func taskWithURLString(api api: Api, parameters: [String: AnyObject]? = nil,
                                       method: Method,
                                       successHandler: (JSON) -> Void,
                                       failureHandler: ((ErrorType) -> Void)? = nil) {
    let userDefaults = NSUserDefaults.standardUserDefaults()
        let token = userDefaults.stringForKey(kUserToken) ?? ""

        let headers = ["X-User-Token": token, "X-App-Id": "1.0.0.0"]
        let urlString = "\(protocolType.rawValue)\(domain.rawValue)\(api.rawValue)"
        
        request(method, urlString, parameters: parameters, encoding: .URL, headers: headers).responseJSON { response in
//            if result.isSuccess {
////                let json = JSON(result.value!)
//                //                print(request)
//                //                print(json)
//                let code = json["code"].intValue
//                if code != 0 {
//                    var flag = true
//                    let message = json["message"].stringValue
//                    if message == "请填写个人信息后再来发布" || message == "该手机号已申请过贷款，请耐心等待客服的联系" || message == "没有还款记录" {
//                        flag = false
//                    }
//                    if code == 102 || code == 103 {
////                        SVProgressHUD.showErrorWithStatus("登录已过期")
//                        UserTool.cleanUserToken()
//                        ControllerTool.chooseRootViewController()
//                        let rootVC = UIApplication.sharedApplication().keyWindow!.rootViewController!
//                        LoginService.login(rootVC)
//                        return
//                    }
//                    if flag {
////                        SVProgressHUD.showInfoWithStatus(json["message"].stringValue)
//                    }
//                }
//                successHandler(json)
//            } else {
//                SVProgressHUD.showErrorWithStatus("网络错误，请检查网络设置")
                //                print(request)
                //                print(response)
//                if let failureHandler = failureHandler {
//                    failureHandler(result.error!)
//                }
//            }
        }
        
        
    }
}
