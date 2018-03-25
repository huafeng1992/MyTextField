//
// Created by huafeng on 2018/1/30.
// Copyright (c) 2018 huafeng. All rights reserved.
//

import Foundation
import UIKit

class ChartsView: UIView {
    
    var width: CGFloat = 0
    var height: CGFloat = 0
    let topBottomMas: CGFloat = 30
    
    convenience init(data: Array<String>, frame: CGRect) {
        self.init(frame: frame)
        
        width = frame.size.width
        height = frame.size.height
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        print("func draw(_ rect: CGRect)", rect)
        
        let ctx: CGContext? = UIGraphicsGetCurrentContext()
        ctx?.setFillColor(UIColor.red.cgColor)
        ctx?.setStrokeColor(UIColor.yellow.cgColor)
        
        
        var rectArr: Array<CGRect> = []
        
        for i in 1..<6 {
            rectArr.append(.init(x: 20 * i, y: 50, width: 10, height: 100))
        }
        ctx?.addRects(rectArr)
        ctx?.drawPath(using: .fillStroke)
        UIGraphicsEndImageContext()
//        ctx?.strokePath()
        
//        rectangle.size.width = rectangle.size.width + 10
//        rectangle.size.height = rectangle.size.height + 10
//        if rectangle.size.width >= rect.width-20 {
//           rectangle.size.width = rect.width - 20
//        }
//        if rectangle.size.height >= rect.height-20 {
//           rectangle.size.height = rect.height - 20
//        }
//
//        if ctx != nil {
//            ctx!.setFillColor(UIColor.red.cgColor)
//            ctx!.setStrokeColor(UIColor.yellow.cgColor)
//            ctx!.setLineWidth(2)
//            ctx!.addRect(rectangle)
//            ctx!.drawPath(using: .fillStroke)
//            UIGraphicsEndImageContext()
//        }
    }
}

class ChartsContentCell: UITableViewCell {
    
    var width: CGFloat = 0
    var height: CGFloat = 0
    let topBottomMas: CGFloat = 30
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        width = rect.size.width
        height = rect.size.height
        
        let columnDontRect: CGPoint = .init(x: topBottomMas, y: topBottomMas)
        let columnDontFooterRect: CGPoint = .init(x: topBottomMas, y: height - topBottomMas)
        
        let rowDontRect: CGPoint = .init(x: topBottomMas, y: height - topBottomMas)
        let rowDontFooterRect: CGPoint = .init(x: width - topBottomMas, y: height - topBottomMas)
        
        guard let ctx: CGContext = UIGraphicsGetCurrentContext() else { return }
        ctx.addLines(between: [columnDontRect, columnDontFooterRect])
        ctx.addLines(between: [rowDontRect, rowDontFooterRect])
        ctx.setLineWidth(1)
                
        var rectArray = [CGRect]()
        
        let count: Int = 6
        let mars: CGFloat = 10
        
        let childWidth = (rowDontFooterRect.x - rowDontRect.x)/CGFloat(count) - mars
        
        for i in 0..<count {
            
            rectArray.append(.init(x: (childWidth + mars) * CGFloat(i + 1) , y: columnDontRect.y, width: childWidth, height: 100))
        }
        
        ctx.addRects(rectArray)
        ctx.setFillColor(UIColor.red.cgColor)
        ctx.drawPath(using: .fillStroke)
    }
}


