//
//  Codable.swift
//  MyTextField
//
//  Created by huafeng on 2018/3/16.
//  Copyright © 2018年 huafeng. All rights reserved.
//

import Foundation

class CodableTest {
    
    class func start() {
        Codble3()
    }
    
}

/// Mirror
protocol DictionaryValue {
    var value: Any { get }
}
extension Int: DictionaryValue { var value: Any { return self } }
extension Float: DictionaryValue { var value: Any { return self } }
extension String: DictionaryValue { var value: Any { return self } }
extension Bool: DictionaryValue { var value: Any { return self } }

extension DictionaryValue {
    var value: Any {
        let mirror = Mirror(reflecting: self)
        var result = [String: Any]()
        for child in mirror.children {
            // 如果无法获得正确的 key，报错
            guard let key = child.label else {
                fatalError("Invalid key in child: \(child)")
            }
            // 如果 value 无法转换为 DictionaryValue，报错
            if let value = child.value as? DictionaryValue {
                result[key] = value.value
            } else {
                fatalError("Invalid value in child: \(child)")
            }
        }
        return result
    }
}

///Swift4.1之后
//extension Array: DictionaryValue where Element: DictionaryValue {
//    var value: Any { return map { $0.value } }
//}
//
//extension Dictionary: DictionaryValue where Value: DictionaryValue {
//    var value: Any { return mapValues { $0.value } }
//}

///Swift4.1之前
extension Array: DictionaryValue {
    var value: Any { return map { ($0 as! DictionaryValue).value } }
}
extension Dictionary: DictionaryValue {
    var value: Any { return mapValues { ($0 as! DictionaryValue).value } }
}

extension CodableTest {
    
    struct Cat3: DictionaryValue {
        let name: String
        let age: Int
    }
    
    struct Wizard: DictionaryValue {
        let name: String
        let cat: Cat3
    }

    class func MirrorAct() {
        
        let kitten = Cat3(name: "kitten", age: 2)
        let mirror = Mirror.init(reflecting: kitten)
        print("1.---")
        print(mirror)
        print("2.---")
        for child in mirror.children {
            print("\(child.label!) - \(child.value)")
        }
        print("3.---")
        print(kitten.value)
        
        let wizard = Wizard(name: "Hermione", cat: kitten)
        print("4.---")
        print(wizard.value)
        
        MirrorAct2()
    }
    
    /*------------------------*/
    
    struct Cat: DictionaryValue {
        let name: String
        let age: Int
    }
    
    struct Gryffindor: DictionaryValue {
        let wizards: [Wizard]
    }
    
    class func MirrorAct2() {
        
        let crooks = Cat3(name: "Crookshanks", age: 2)
        let hermione = Wizard(name: "Hermione", cat: crooks)
        
        let hedwig = Cat3(name: "hedwig", age: 3)
        let harry = Wizard(name: "Harry", cat: hedwig)
        
        let gryffindor = Gryffindor(wizards: [harry, hermione])
        
        print("5.---")
        print(gryffindor.value)
    }
    
}


/// Codable
extension CodableTest {
    
//    在 Swift 4 引入 Codable 之后，我们有更优秀的方式来做这件事：那就是将 Cat 声明为 Codable (或者至少声明为 Encodable - 记住 Codable 其实就是 Decodable & Encodable)，然后使用相关的 encoder 来进行编码。不过 Swift 标准库中并没有直接将一个对象编码为字典的编码器，我们可以进行一些变通，先将需要处理的类型声明为 Codable，然后使用 JSONEncoder 将其转换为 JSON 数据，最后再从 JSON 数据中拿到对应的字典：
    
    struct Cat2: Codable {
        let name: String
        let age: Int
    }
    
    class func Codble() {
        let kitten = Cat2(name: "kitten", age: 2)
        let encoder = JSONEncoder()
        
        do {
            let data = try encoder.encode(kitten)
            let dictionary = try JSONSerialization.jsonObject(with: data, options: [])
            print(dictionary)
//            {
//                age = 2;
//                name = kitten;
//            }

        } catch {
            print(error)
        }
    }
    
    class func Codble2() {
        
        let kitten = Cat2(name: "kitten", age: 0)
        let kitten1 = Cat2(name: "kitten", age: 1)
        let array = [kitten, kitten1]
        let encoder = JSONEncoder()
        
        do {
            let data = try encoder.encode(array)
            let dictionary = try JSONSerialization.jsonObject(with: data, options: [])
            print(dictionary)
        } catch {
            print("error")
        }
    }
    
    // ----------
    
    struct CatHome: Codable {
        var cat: Catn?
        var catArr = [Catn]()
    }
    
    struct Catn: Codable {
        let name: String
        let age: Int
    }
    
    class func Codble3() {
        
        var camHome = CatHome()
        camHome.cat = Catn(name: "kitten", age: 0)
        camHome.catArr = [Catn(name: "kitten0", age: 100),
                          Catn(name: "kitten1", age: 101)]
        let encoder = JSONEncoder()
        do {
            let data = try encoder.encode(camHome)
            let dictionary = try JSONSerialization.jsonObject(with: data, options: [])
            print(dictionary)
        } catch {
            print("error")
        }
    }
}

extension CodableTest {
    
//    struct Cat {
//        let name: String
//        let age: Int
//
//        func toDictionary() -> [String: Any] {
//            return ["name": name, "age": age]
//        }
//    }
//
//    class func simple() {
//        let kitten = Cat(name: "kitten", age: 2)
//        print(kitten.toDictionary()) //["name": "kitten", "age": 2]
//    }
}
