//
//  HigherOrderFunction.swift
//  MyTextField
//
//  Created by huafeng on 2018/3/15.
//  Copyright © 2018年 huafeng. All rights reserved.
//

import Foundation
import UIKit
struct HigherOrderFunction {

    static func test () {
        components()
        contains()
    }
}

extension HigherOrderFunction {
    /// components 字符串切割
    static func components() {
        let str = "1,2,3,4,5"
        let newStr = str.components(separatedBy: ",")
        print(newStr)
        // ["1", "2", "3", "4", "5"]
    }
    
    static func contains() {
        let str = [1,2,3,4,5]
        let boo = str.contains(3)
        print(boo)
    }
}

extension HigherOrderFunction {
    
    /// joined 合并字符串数组
    static func joined() {
        let a = [1, 2, 3, 4]
        print(a.map{"\($0)"}.joined()) // 1234
        print(a.map{"\($0)"}.joined(separator: ",")) // 1,2,3,4
    }
}

extension HigherOrderFunction {
    /// zip 是将两个序列的元素，一一对应合并成元组，生成一个新序列
    static func zip() {
    
        let a = [1, 2, 3, 4]
        let b = ["a", "b", "c", "d", "e"]
        let c = Array(Swift.zip(a, b).map { $0 })
        print(c)
        // c = [(1, "a"), (2, "b"), (3, "c"), (4, "d")]
        
        // 生成的序列，如同原始两个序列的相互咬合，因此函数的名字为 zip。zip 的英文有拉链的意思。生成的序列 count 为原始序列的最小值。
    }
}

extension HigherOrderFunction {
    
    static func flatMap() {
        
        // flatMap 一个常见用法是在 map 的基础上，剔除掉空值。比如下面代码
        var images = [UIImage]()
        for i in 1 ..< 10 {
            if let image = UIImage.init(named: "icon-\(i).png") {
                images.append(image)
            }
        }
        // 就可以改写成
        _ = (1 ..< 10).flatMap { i in
            UIImage(named: "icon-\(i).png")
        }
        
        // flapMap 另一个常见的用法是插入额外元素。比如
        let array = ["1", "2", "3", "", "6", "7"]
        let a = array.flatMap { num in
            "\(num)+\(num)"
        }
        print(a) // ["1+1", "2+2", "3+3", "+", "6+6", "7+7"]
        
        let b = array.flatMap{[$0, $0]}
        print(b) // ["1", "1", "2", "2", "3", "3", "", "", "6", "6", "7", "7"]
    }
    
    
}

extension HigherOrderFunction {
    
    /// Reduce
    /// reduce(initial: U, combine: (U, T) -> U) -> U
    /// 第一个参数为 类型U的初始值 另一个为把类型为U的元素和类型为T的元素组合成一个类型为U的值的函数。最终结果整个数组就变成了一个类型为U的值。
    static func reduce() {
        
        let array = [1, 2, 3, 5, 6, 7]
        
        // 初始值为0 的和
        let num = array.reduce(0) {$0 + $1}
        print(num) // 24
        
        let num1 = array.reduce(100, -)   // 简化
        print(num1)// 76
    }
}

extension HigherOrderFunction {
    
    /// map 转换生成新的数组 map { (U) -> T}  :U为当前数组内心，T为返回数组类型
    static func map() {
        
        let array = [1, 2, 3, 5, 6, 7]
        let newArr = array.map {"\($0)="}
        print(newArr) // ["1=", "2=", "3=", "5=", "6=", "7="]
        
        let newArr2 = array.map { (item) -> String in
            if item <= 3 {
                return "-\(item)"
            } else {
                return "+\(item)"
            }
        }
        print(newArr2) // ["-1", "-2", "-3", "+5", "+6", "+7"]
    }
}

extension HigherOrderFunction {
    
    /// filter 过滤
    /// filter 函数，生成数组 闭包内为生成条件
    static func filter() {
        
        let array = [1, 2, 3, 5, 6, 7]
        
        // array中所有数据大于3的数据生成一个数组 并打印
        print(array.filter({$0>3})) // [5, 6, 7]
        
        // array中所有数据大于6的数据生成一个数组
        let newArr = array.filter { (item) -> Bool in
            return item > 6 ? true : false
        }
        print(newArr) // [7]
    }
}
