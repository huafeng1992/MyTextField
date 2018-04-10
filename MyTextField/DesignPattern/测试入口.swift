//
//  测试入口.swift
//  MyTextField
//
//  Created by 华峰 on 2018/4/6.
//  Copyright © 2018年 huafeng. All rights reserved.
//

import Foundation

struct DesignPattern {
    
    static func test() {
        
        getModelNum(model: Model())
        getModelNum(model: Model2())
    }
    
    static func getModelNum(model: ModelDelegate) {
        
        print(model.setModelAction())
        
    }
    
}

