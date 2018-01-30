//
//  ViewController.swift
//  ChartsView
//
//  Created by huafeng on 2018/1/30.
//  Copyright © 2018年 huafeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let btn = UIButton.init(frame: CGRect.init(x: 100, y: 200, width: 100, height: 40))
        btn.setTitle("Button", for: .normal)
        btn.setTitleColor(.red, for: .normal)
        btn.addTarget(self, action: #selector(btnAction(btn:)), for: .touchUpInside)
        view.addSubview(btn)
        
        jumAction()
    }
    
    @objc func btnAction(btn: UIButton) {
        jumAction()
    }
    
    func jumAction() {
        let chartVC = ChartsViewController()
        present(chartVC, animated: true, completion: nil)
    }
}

