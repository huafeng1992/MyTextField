//
//  ChartsVC.swift
//  ChartsView
//
//  Created by huafeng on 2018/1/30.
//  Copyright © 2018年 huafeng. All rights reserved.
//

import Foundation
import UIKit

let kw = UIScreen.main.bounds.size.width
let kh = UIScreen.main.bounds.size.height

class ChartsViewController: UIViewController {
    
    let tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: kw, height: kh), style: .plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setTable()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        chartView.setNeedsDisplay()
    }
}

extension ChartsViewController: UITableViewDataSource, UITableViewDelegate {

    func setTable() {
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 400
        tableView.register(ChartsContentCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(tableView)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ChartsContentCell
        cell.setNeedsDisplay()
        return cell
    }
}












