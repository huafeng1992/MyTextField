//
//  NSMutableAttributedStringProtocol.swift
//  BaonahaoSchool
//
//  Created by 王华峰 on 2018/4/4.
//  Copyright © 2018年 XiaoHeTechnology. All rights reserved.
//

import Foundation
import UIKit

class TestAttri: MutableAttributedStringProtocol {
    
    class func test() {
        
        print("MutableAttributedStringProtocol")
        
        
    }
}


protocol MutableAttributedStringProtocol { }

extension MutableAttributedStringProtocol where Self: NSMutableAttributedString {
    
    
//    NSFontAttributeName 字体
//
//    NSParagraphStyleAttributeName 段落格式
//
//    NSForegroundColorAttributeName 字体颜色
//
//    NSBackgroundColorAttributeName 背景颜色
//
//    NSStrikethroughStyleAttributeName 删除线格式
//
//    NSUnderlineStyleAttributeName 下划线格式
//
//    NSStrokeColorAttributeName 删除线颜色
//
//    NSStrokeWidthAttributeName 删除线宽度
//
//    NSShadowAttributeName 阴影
    
    static func setAttStr(string allStr: String, change: String, defaultFont: UIFont, changeFont: UIFont, defaultColor: UIColor, changeColor: UIColor) -> NSMutableAttributedString {
        
        let allString = allStr as NSString
        let range = allString.range(of: change)
        
        let attString = NSMutableAttributedString.init(string: allStr)
        attString.addAttributes([NSFontAttributeName : defaultFont,
                                 NSForegroundColorAttributeName: defaultColor], range: NSMakeRange(0, allStr.count))
        attString.setAttributes([NSFontAttributeName : changeFont,
                                 NSForegroundColorAttributeName: changeColor], range: range)
        
        return attString
    }
}

extension NSMutableAttributedString: MutableAttributedStringProtocol {
    
}






