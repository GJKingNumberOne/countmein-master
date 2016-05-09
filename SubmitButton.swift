//
//  SubmitButton.swift
//  countmein
//
//  Created by 华瑞金科 on 16/5/9.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class SubmitButton: UIButton {

    class func submitButton(title title: String) -> SubmitButton {
        let submitButton = SubmitButton()
        submitButton.setBackgroundImage(UIImage(named: "submit_button"), forState: .Normal)
        submitButton.setBackgroundImage(UIImage(named: "submit_button_highlighted"), forState: .Highlighted)
        submitButton.setBackgroundImage(UIImage(named: "submit_button_disabled"), forState: .Disabled)
        submitButton.setTitle(title, forState: .Normal)
        return submitButton
    }

}
