//
//  ViewController.swift
//  ChartsView
//
//  Created by huafeng on 2018/1/30.
//  Copyright © 2018年 huafeng. All rights reserved.
//

import UIKit
//import RxSwift
//import RxCocoa

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setMainUI(view: view)
    }
    
    func setMainUI(view: UIView) {
        
        let btn = UIButton()
        btn.frame = .init(x: 100, y: 100, width: 100, height: 100)
        btn.setTitle("cccc", for: .normal)
        btn.setTitleColor(.green, for: .normal)
        view.addSubview(btn)
        btn.backgroundColor = .green
        btn.addTarget(self, action: #selector(btnAction(btn:)), for: .touchUpInside)
        
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
//        HigherOrderFunction.test()
//        HFAlamofire.start()
//        CodableTest.start()
        
        
//        print(GetDate.getCurrentYear())
//        print(GetDate.getCurrentMonth())
        
//        print("week:" ,GetDate.getWeekday("2018-03-17")!)
//        print(GetDate.date())
        
//        GetDate.getInterval(dateStr: "2018-03-20", dateFormatStr: .YearMonthDay)
//        GetDate.date()
        
        print(GetDate.weekInString(weekStr: "1,3,4", date: Date()))
        

        
    }

}















