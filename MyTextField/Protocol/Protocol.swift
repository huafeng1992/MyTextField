//
//  Protocol.swift
//  MyTextField
//
//  Created by 华峰 on 2018/3/25.
//  Copyright © 2018年 huafeng. All rights reserved.
//

import Foundation
import UIKit

class ProtocolViewController: UIViewController, DescProtocol {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        
        
        print(TestTableViewCell.name)
    }
}

protocol DescProtocol {
    
    
}

extension DescProtocol {
    var name: String {
        return "123"
    }
    func desc() {
        print("我是一个name")
    }
    
}


protocol Shakeable { }

extension Shakeable where Self: UIView {
    
    static var name: String {
        return String(describing: self)
    }
    
    func shake() {
        // implementation code
        print("Shakeable")
        
    }
}

class TestTableViewCell: UITableViewCell, Shakeable {
    
    
    
}
