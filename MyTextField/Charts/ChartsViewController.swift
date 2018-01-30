//
//  ChartsVC.swift
//  ChartsView
//
//  Created by huafeng on 2018/1/30.
//  Copyright © 2018年 huafeng. All rights reserved.
//

import Foundation
import UIKit

class ChartsViewController: UIViewController {
    
    let chartView = ChartsView.init(data: ["90", "10", "20", "40"], frame: CGRect.init(x: 20, y: 200, width: 375 - 40, height: 300))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        chartView.backgroundColor = .blue
        view.addSubview(chartView)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        chartView.setNeedsDisplay()
    }
}
