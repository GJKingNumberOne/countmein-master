//
//  ApiConstants.swift
//  countmein
//
//  Created by 华瑞金科 on 16/5/6.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import Foundation

enum Protocol: String {
    case HTTP = "http://"
    case HTTPS = "https://"
}

enum Domain: String {
    case DevelopmentEnvironment = "dev-b.qianshengqian.com"
    case TestEnvironment = "test-b.qianshengqian.com"
    case ProductionEnvironment = "b.qianshengqian.com"
}

enum Api: String {
    // 发送短信
    case sms = "/auth/sms"
    // 登录、注册
    case login = "/auth/register"
    // 获取本人个人及企业信息
    case getUserInfo = "/user/getinfo"
    // 获取其他用户的个人和企业信息
    case getOtherUserInfo = "/user/getinfobyuserid"
    // 企业规模
    case companyScale = "/company/getscale"
    // 保存个人及企业信息
    case saveUserInfo = "/user/saveinfo"
    // 获取需求信息
    case getRequirementInfo = "/user/getbinfo"
    // 是否可以发布需求
    case canPublish = "/user/canpublish"
    // 发布需求
    case saveRequirementInfo = "/user/savebinfo"
    // 贷款产品信息
    case loanProduct = "/guarantee/product"
    // 申请贷款信息
    case loanApply = "/guarantee/apply"
    // 未登录申请贷款
    case loanApplyNotLogin = "/guarantee/applynotlogin"
    // 用户还款记录
    case repay = "/guarantee/repay"
    // 商务圈接口
    case bcircle = "/company/getbcircle"
    // 系统通知
    case systemMessage = "/msg/getnotice"
    // 读取单条消息
    case readAMessage = "/msg/view"
    // 推荐借款人
    case recommend = "/user/reborrower"
    // 推荐贷款人列表
    case getRecommend = "/user/getborrowers"
    // 获取能否可以贷款
    case loanStatus = "/guarantee/status"
    // 获取FAQ接口
    case faq = "/about/faq"
    // 获取联系我们接口
    case contactUs = "/about/contactus"
    // 获取分享信息接口
    case shareInfo = "/user/shareinfo"

}