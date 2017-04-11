//
//  ViewController.swift
//  Calculator
//
//  Created by mgx on 17/4/11.
//  Copyright © 2017年 mgx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!        //定义label控件
    
    var isFirstShowNumber: Bool = true
    
    /**
     *  显示数字
     */
    @IBAction func getBtnText(_ sender: UIButton) {
        
        let btnText = sender.currentTitle!       //定义一个常量记录按钮的值,若未定义该类型，则默认为optional类型，其值有两种一种为nil(未知)，另一种为
        //已知，当我们想要获取到其具体的类型，可以使用!对optional解包来获取到对应的类型
        print("btnText = \(btnText)")
        if isFirstShowNumber {              //如果是第一次输入
            display.text = btnText
            isFirstShowNumber = false
        }else {
            display.text = display.text!+btnText
         
        }
     
    }
    
    /*
     *  加
     */
    @IBAction func addAction(_ sender: UIButton) {
        
    }
}

