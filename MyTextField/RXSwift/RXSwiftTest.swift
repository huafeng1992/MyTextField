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
import RxDataSources

class RXTableViewController: UIViewController {
    
    let disposeBag = DisposeBag()
    
    let tableView: UITableView = {
        let tableView = UITableView.init(frame: .zero, style: .plain)
        tableView.frame = .init(x: 0, y: 64, width: kw, height: kh - 64)
        tableView.backgroundColor = .white
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        return tableView
    }()

    var data: Observable<[TestModel]>?
    var sectionData: Observable<[TestModel]>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "RXSwift"
        view.backgroundColor = .white
        view.addSubview(tableView)
        
        
        var modelArray: Array<TestModel> = []
        for i in 0..<10 {
            let testModel = TestModel.init()
            testModel.name = "\(i)"
            
            var childArr: Array<Moodel> = []
            for i in 0..<3 {
                let model = Moodel()
                model.name = "childmodel + \(i)"
                childArr.append(model)
            }
            testModel.childModel = childArr
            
            modelArray.append(testModel)
        }
        
        data = Observable.of(modelArray)
        sectionData = Observable.of(modelArray)
        
        dataSourceAction()
        
        
        tableView.rx.modelSelected(TestModel.self).subscribe(onNext: {
            
            print($0.name! , $0)
            
        }).disposed(by: disposeBag)
    }
    
    func dataSourceAction() {
        
//        let dataSource = RxTableViewSectionedReloadDataSource<TestModel>()
//        Observable.just([SectionModel(model: "title", items: [1, 2, 3])])
//            .bind(to: tableView.rx.items(dataSource: dataSource))
//            .disposed(by: disposeBag)
    }
}

// MARK: - simple
extension RXTableViewController {
    
    func RxasDriver() {
        // 写法一
        data?.asDriver(onErrorJustReturn: [])
            .drive(tableView.rx.items(cellIdentifier: "Cell")) { (index, model, cell) in
                
                cell.textLabel?.text = model.name! + "asDriver\(index)"
            }
            .disposed(by: disposeBag)
    }
    
    func RxBind() {
        
        data?.bind(to: tableView.rx.items(cellIdentifier: "Cell")) { (index, model, cell) in
            
            cell.textLabel?.text = model.name! + "bind\(index)"
            
            }.disposed(by: disposeBag)
    }
}



