//
//  代理保护模式.swift
//  MyTextField
//
//  Created by 华峰 on 2018/4/6.
//  Copyright © 2018年 huafeng. All rights reserved.
//

import Foundation

// 保护代理模式
// 百度百科：为其他对象提供一种代理以控制对这个对象的访问。在某些情况下，一个对象不适合或者不能直接引用另一个对象，而代理对象可以在客户端和目标对象之间起到中介的作用
// 设计模式分类：结构型模式


/// 电脑接口
protocol PC {
    
    func connect(ip: String) -> Bool
}

///电脑实现
class MyPC: PC {
    
    @discardableResult
    func connect(ip: String) -> Bool {
        print("connect to \(ip)")
        return true
    }
}

/// 代理实现
class MyProxy: PC {
    
    var pc: MyPC!
    init(pc: MyPC) {
        self.pc = pc
    }
    
    @discardableResult
    func connect(ip: String) -> Bool {
        if ip == "10.10.10.10" {
            print("\(ip) has been limited")
            return false
        } else {
            pc.connect(ip: ip)
            return true
        }
    }
}


















