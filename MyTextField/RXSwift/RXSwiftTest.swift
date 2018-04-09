//
//  RXSwiftTest.swift
//  MyTextField
//
//  Created by 华峰 on 2018/4/8.
//  Copyright © 2018年 huafeng. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

class RXTableViewController: UIViewController {
    
    let disposeBag = DisposeBag()
    
    let tableView: UITableView = {
        let tableView = UITableView.init(frame: .zero, style: .plain)
        tableView.frame = .init(x: 0, y: 64, width: kw, height: kh - 64)
        tableView.backgroundColor = .white
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        return tableView
    }()
//
//    let data: Observable = { () -> Observable<[TestModel]> in
//
//
//        return data
//    }()
//
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "RXSwift"
        view.backgroundColor = .white
        view.addSubview(tableView)
        
        
        var modelArray: Array<TestModel> = []
        for i in 0..<10 {
            let testModel = TestModel.init()
            testModel.name = "\(i)"
            modelArray.append(testModel)
        }
        
        let data = Observable.of(modelArray)
        
        
        
        data.asDriver(onErrorJustReturn: [])
            .drive(tableView.rx.items(cellIdentifier: "Cell")) { (_, contributor, cell) in

                cell.textLabel?.text = contributor.name
//                cell.detailTextLabel?.text = contributor.gitHubID
//                cell.imageView?.image = contributor.image
            }
            .disposed(by: disposeBag)
        
        tableView.rx.modelSelected(TestModel.self).subscribe(onNext: {
            
            print($0.name! , $0)
            
        }).disposed(by: disposeBag)

        
    }
}





