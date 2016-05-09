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
    
    }
}
