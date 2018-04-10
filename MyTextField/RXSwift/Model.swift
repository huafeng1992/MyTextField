//
//  Model.swift
//  MyTextField
//
//  Created by 华峰 on 2018/4/9.
//  Copyright © 2018年 huafeng. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import RxDataSources

class TestModel {
    var name: String?
    var age: Int = 0
    
    var childModel: Array<Moodel> = []
    
}

//extension TestModel: SectionModelType {
//    var items: [Int] {
//        return [1,3,4]
//    }
//
//    typealias Item = Int
//}

class Moodel: NSObject {
    var name: String?
}

