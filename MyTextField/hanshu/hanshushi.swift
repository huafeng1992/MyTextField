//
//  hanshushi.swift
//  MyTextField
//
//  Created by 华峰 on 2018/3/28.
//  Copyright © 2018年 huafeng. All rights reserved.
//

import Foundation

typealias RET = () -> Void

class Request {
    
    var totalNum: Int = 0
    
    func add(_ num: Int) -> Request {
        totalNum += num
        return self
    }
}



