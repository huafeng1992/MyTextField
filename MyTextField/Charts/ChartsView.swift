//
// Created by huafeng on 2018/1/30.
// Copyright (c) 2018 huafeng. All rights reserved.
//

import Foundation
import UIKit

class ChartsView: UIView {
    
    var rectangle = CGRect(x: 0, y: 0, width: 30, height: 30)
    
    convenience init(data: Array<String>, frame: CGRect) {
        self.init(frame: frame)
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        print("func draw(_ rect: CGRect)", rect)
        print(rectangle)
        
        
        let ctx: CGContext? = UIGraphicsGetCurrentContext()
        rectangle.size.width = rectangle.size.width + 10
        rectangle.size.height = rectangle.size.height + 10
        if rectangle.size.width >= rect.width-20 {
           rectangle.size.width = rect.width - 20
        }
        if rectangle.size.height >= rect.height-20 {
           rectangle.size.height = rect.height - 20
        }
        
        if ctx != nil {
            ctx!.setFillColor(UIColor.red.cgColor)
            ctx!.setStrokeColor(UIColor.yellow.cgColor)
            ctx!.setLineWidth(2)
            ctx!.addRect(rectangle)
            ctx!.drawPath(using: .fillStroke)
            UIGraphicsEndImageContext()
        }
    }
}

class ChartsContentCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        if let ctx: CGContext = UIGraphicsGetCurrentContext() {
            let rectangle = CGRect(x: 0, y: 0, width: 512, height: 512)
            ctx.setFillColor(UIColor.blue.cgColor)
            ctx.setStrokeColor(UIColor.white.cgColor)
            ctx.setLineWidth(10)
            ctx.addRect(rectangle)
            ctx.drawPath(using: .fillStroke)
            UIGraphicsEndImageContext()
        }
    }
}


