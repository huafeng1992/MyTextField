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

protocol EmptyErrorSetProtocol {}

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
        let views = self.subviews.filter{$0.tag == 300090}
        for viewItem in views {
            viewItem.removeFromSuperview()
        }
    }
    func addEmptyErrorView(type: EmptyErrorSetType, title: String?, action: Selector?) {
        
        hideErrorView()
        
        let emptyView = UIView(frame: self.bounds)
        emptyView.backgroundColor = UIColor.white
        emptyView.tag = 300090
        self.addSubview(emptyView)
        
        let icomViewW: CGFloat = 140
        let imageView = UIImageView(image: UIImage(named: type.icon))
        imageView.frame.size = imageView.image?.size ?? CGSize(width: icomViewW, height: icomViewW)
        imageView.contentMode = .center
        imageView.center = CGPoint(x: emptyView.center.x, y: emptyView.center.y - 60)
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
            reloadButton.backgroundColor = UIColor(red: 255/255.0, green: 42/255.0, blue: 102/255.0, alpha: 1.0)
            reloadButton.layer.cornerRadius = 5
            reloadButton.layer.borderWidth = 0.5
            reloadButton.layer.masksToBounds = true
            reloadButton.layer.borderColor = UIColor.init(hex: 0x666666, alpha: 1) as! CGColor
            reloadButton.setTitle("重新加载", for: .normal)
            reloadButton.setTitleColor(UIColor.white, for: .normal)
            reloadButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
            if action != nil {
                reloadButton.addTarget(self, action: action!, for: .touchUpInside)
            }
            emptyView.addSubview(reloadButton)
        }
    }
}

extension UIView: EmptyErrorSetProtocol {
    
}
extension UIColor {
    //用数值初始化颜色，便于生成设计图上标明的十六进制颜色
    convenience init(hex: UInt, alpha: CGFloat = 1.0) {

        self.init(red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(hex & 0x0000FF) / 255.0, alpha: alpha)
    }
}
