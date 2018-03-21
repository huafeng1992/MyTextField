//
//  HFAlamofire.swift
//  MyTextField
//
//  Created by huafeng on 2018/3/16.
//  Copyright © 2018年 huafeng. All rights reserved.
//

import Foundation
import Alamofire

extension Error {
    var sendDesc: String {
        return "没有数据"
    }
}

struct HFAlamofire {
    
    
    
    static let url = ""
    
    static func start() {
        
        print("开始")
        
        
    
        
//        Alamofire.request("www.baidu.com", method: .get, parameters: nil, encoding: UTF8, headers: nil)
        
        
    }
    
    
}

extension HFAlamofire {
    // DataRequest
    // Alamofire 4
    
    func sendRequest(url: String) {
        Alamofire.request(url).response { response in
            print(response)
        }
    }
    
    func sendRequest(url: String, parms: Parameters, method: HTTPMethod) {
        
        Alamofire.request(url, method: method, parameters: parms, encoding: JSONEncoding.default)
            .downloadProgress(queue: DispatchQueue.global(qos: .utility)) { progress in
                print("Progress: \(progress.fractionCompleted)")
            }
            .validate { request, response, data in
                // Custom evaluation closure now includes data (allows you to parse data to dig out error messages if necessary)
                return .success
            }
            .responseJSON { response in
                debugPrint(response)
        }
        
        
//        Alamofire.request(url, method: method, parameters: parms, encoding: JSONEncoding.default).validate { (request, response, data) -> Request.ValidationResult in
//            guard let data = data else { return .failure(Error.sendDesc) }
//            return .success
//            
//            }.response { (response) in
//                debugPrint(response)
//        }
        
        
    }
    
    
}


