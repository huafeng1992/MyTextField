//
//  代理模式.swift
//  MyTextField
//
//  Created by 华峰 on 2018/4/6.
//  Copyright © 2018年 huafeng. All rights reserved.
//

import Foundation

protocol ModelDelegate {
    func setModelAction() -> Int
}

class Model: ModelDelegate {
    func setModelAction() -> Int {
        return 1000
    }
}

class Model2: ModelDelegate {
    func setModelAction() -> Int {
        return 2000
    }
}


