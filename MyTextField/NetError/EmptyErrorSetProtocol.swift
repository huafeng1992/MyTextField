//
//  EmptyErrorSetProtocol.swift
//  MyTextField
//
//  Created by 华峰 on 2018/4/14.
//  Copyright © 2018年 huafeng. All rights reserved.
//

import Foundation
import UIKit

enum EmptyErrorSetType {
    case emptyData
    case networkError
    case serviceError
    
    var icon: String {
        switch self {
        case .emptyData: return "无数据"
        case .networkError: return "无网络"
        case .serviceError: return "无网络"
        }
    }
}

@objc protocol EmptyErrorSetProtocol: NSObjectProtocol {
    
    func reloadErrorViewAction()
}

extension EmptyErrorSetProtocol where Self : UIView {

    func addEmptyView() {
        addEmptyErrorView(type: .emptyData, title: "暂时没有任何数据,到别处看看吧", action: nil)
    }
    
    func addEmptyView(_ msg: String) {
        addEmptyErrorView(type: .emptyData, title: msg, action: nil)
    }
    
    func addNetErrorView(action: Selector?) {
        addEmptyErrorView(type: .networkError, title: "网络遇到问题，刷新试试", action: action)
    }
    
    func hideErrorView() {
        findErrorView(self)
    }
    
    private func findErrorView(_ inView: UIView) {
        for item in inView.subviews {
            if item.tag == 300090 {item.removeFromSuperview()}
            findErrorView(item)
        }
    }
    
    private func addEmptyErrorView(type: EmptyErrorSetType, title: String?, action: Selector?) {
        
        hideErrorView()
        
        let emptyView = UIView(frame: self.bounds)
        emptyView.backgroundColor = UIColor.white
        emptyView.tag = 300090
        self.addSubview(emptyView)
        
        let icomViewW: CGFloat = 140
        let imageView = UIImageView(image: UIImage(named: type.icon))
        imageView.frame.size = imageView.image?.size ?? CGSize(width: icomViewW, height: icomViewW)
        imageView.contentMode = .center
        imageView.center = CGPoint(x: emptyView.center.x, y: emptyView.center.y - 70)
        emptyView.addSubview(imageView)
        
        let tipLabel = UILabel()
        let margin: CGFloat = 20
        tipLabel.numberOfLines = 0
        tipLabel.font = UIFont.systemFont(ofSize: 14)
        tipLabel.textColor = UIColor.lightGray
        
        if title != nil {
            if title!.contains("\n") {
                let style = NSMutableParagraphStyle()
                style.lineSpacing = 5 // 设置行间距
                style.alignment = .center // 文字居中
                let tipString = NSAttributedString(string: title!, attributes: [NSParagraphStyleAttributeName: style])
                tipLabel.attributedText = tipString
            } else {
                tipLabel.text = title!
            }
        }
        
        tipLabel.adjustsFontSizeToFitWidth = true
        tipLabel.textAlignment = .center
        tipLabel.sizeToFit()
        tipLabel.frame = CGRect(x: margin, y: imageView.frame.maxY + margin, width: UIScreen.main.bounds.width - margin*2, height: tipLabel.bounds.height)
        emptyView.addSubview(tipLabel)
        
        // 网络请求失败
        if type == .networkError || type == .serviceError {
            
            let reloadButton = UIButton(type: .system)
            reloadButton.frame.size = CGSize(width: 100, height: 36)
            reloadButton.center = CGPoint(x: emptyView.center.x, y: tipLabel.frame.maxY + margin*2)
            reloadButton.backgroundColor = .white
            reloadButton.layer.cornerRadius = 5
            reloadButton.layer.borderWidth = 0.5
            reloadButton.layer.masksToBounds = true
            let color = "007aff"
            reloadButton.layer.borderColor = UIColor.init(color).cgColor
            reloadButton.setTitle("重新加载", for: .normal)
            reloadButton.setTitleColor(UIColor.init(color), for: .normal)
            reloadButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
            if action != nil {
                reloadButton.addTarget(self, action: #selector(self.reloadErrorViewAction), for: .touchUpInside)
            }
            emptyView.addSubview(reloadButton)
        }
    }
}

class HFTableView: UITableView, EmptyErrorSetProtocol {
    
    typealias ReloadError = () -> Void
    var reloadError: ReloadError? = nil
    
    @objc func reloadErrorViewAction() {
        if reloadError != nil {
            reloadError!()
        }    
    }
}

class HFCollectionView: UICollectionView, EmptyErrorSetProtocol {
    
    typealias ReloadError = () -> Void
    var reloadError: ReloadError? = nil
    
    @objc func reloadErrorViewAction() {
        if reloadError != nil {
            reloadError!()
        }
    }
}




//extension UIView: EmptyErrorSetProtocol {
//
//    typealias ReloadError = () -> Void
//
//    @objc func reloadErrorAction() {
//        print("123333")
//    }
//
//     func reloadErrorView() {
//        print("1233")
//    }
//
//}

extension String {
    /// 将十六进制颜色转换为UIColor
    func uiColor() -> UIColor {
        // 存储转换后的数值
        var red:UInt32 = 0, green:UInt32 = 0, blue:UInt32 = 0
        
        // 分别转换进行转换
        Scanner(string: self[0..<2]).scanHexInt32(&red)
        
        Scanner(string: self[2..<4]).scanHexInt32(&green)
        
        Scanner(string: self[4..<6]).scanHexInt32(&blue)
        
        return UIColor(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha: 1.0)
    }
    
    /// String使用下标截取字符串
    /// 例: "示例字符串"[0..<2] 结果是 "示例"
    subscript (r: Range<Int>) -> String {
        get {
            let startIndex = self.index(self.startIndex, offsetBy: r.lowerBound)
            let endIndex = self.index(self.startIndex, offsetBy: r.upperBound)
            
            return self[startIndex..<endIndex]
        }
    }
}

extension UIColor {
    
    /// 用十六进制颜色创建UIColor
    ///
    /// - Parameter hexColor: 十六进制颜色 (0F0F0F)
    convenience init(_ hexColor: String) {
        
        // 存储转换后的数值
        var red:UInt32 = 0, green:UInt32 = 0, blue:UInt32 = 0
        
        // 分别转换进行转换
        Scanner(string: hexColor[0..<2]).scanHexInt32(&red)
        
        Scanner(string: hexColor[2..<4]).scanHexInt32(&green)
        
        Scanner(string: hexColor[4..<6]).scanHexInt32(&blue)
        
        self.init(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha: 1.0)
    }
}
