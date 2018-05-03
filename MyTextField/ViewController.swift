//
//  ViewController.swift
//  ChartsView
//
//  Created by huafeng on 2018/1/30.
//  Copyright © 2018年 huafeng. All rights reserved.
//

import UIKit
import SnapKit
//import RxSwift
//import RxCocoa

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 提交测试
        setMainUI(view: view)
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(notificationAction(notifi:)), name: Notification.Name.Task.DidResume, object: nil)
        
        let settingsIcon = R.image.招生管家全部权限整理
        let cell = R.image.tttt()
        let clr = R.clr.myRSwiftColors()
        let color = R.clr.myRSwiftColors.warning()
        
        let font = R.font.averiaLibreRegular(size: 12)
        
        view.backgroundColor = color
        
        
        
        
        
//        NotificationCenter.default.addObserver(self, selector: #selector(notificationAction), name: Notification.Name.Task.DidSuspend, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(notificationAction), name: Notification.Name.Task.DidCancel, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(notificationAction), name: Notification.Name.Task.DidComplete, object: nil)
        buttonArraySnpakit()
    }
    
    @objc func notificationAction(notifi: Notification) {
        print(notifi.name)
    }
    
    func setMainUI(view: UIView) {
        
        let btn = UIButton()
        btn.frame = .init(x: 100, y: 100, width: 100, height: 100)
        btn.setTitle("cccc", for: .normal)
        btn.setTitleColor(.green, for: .normal)
        view.addSubview(btn)
        btn.backgroundColor = .green
        btn.addTarget(self, action: #selector(btnAction(btn:)), for: .touchUpInside)
        
//        btn.setImage(, for: <#T##UIControlState#>)
        
//        btn.rx.tap.subscribe(onNext: { (_) in
//
//            HFAlamofire.start()
//
//        }).disposed(by: disposeBag)


        //        btn.rx.tap.bind {
        //            print("135678765re")
        //
        //        }.disposed(by: disposeBag)
        
        let textLabel = UILabel()
        textLabel.frame = .init(x: 100, y: 20, width: 300, height: 20)
//        view.addSubview(textLabel)
        
        let textField = UITextField()
        textField.frame = .init(x: 100, y: 300, width: 200, height: 30)
        textField.backgroundColor = .red
//        view.addSubview(textField)
        //        textField.rx.text.bind(to: textLabel.rx.text).disposed(by: disposeBag)
//        textField.rx.text.orEmpty
//            .asDriver()
//            .map {
//                "Character count: \($0)"
//            }
//            .drive(textLabel.rx.text).disposed(by: disposeBag)
        
    }
    
    @objc func btnAction(btn: UIButton) {
        
        let testVC = RXTableViewController()
        show(testVC, sender: nil)
        
        TestAttri.test()
    }

    
    
}


extension ViewController {
    
    func buttonArraySnpakit() {
        
        
        var buttonArray: Array<UIButton> = []
        for i in 0..<3 {
            let button = UIButton()
            button.setTitle("\(i)", for: .normal)
            buttonArray.append(button)
            
        }
        
//        buttonArray.
//        button.snp.makeConstraints {
//        }
        
        
        
        
        
    }
    
}








