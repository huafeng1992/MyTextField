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

        send()
    }
}

var manger:SessionManager? = nil

extension HFAlamofire {

    func sendRequest(url: String) {
        Alamofire.request(url).response { response in
            print(response)
        }
    }
    
    static func send() {
        
//        let urlStr = "https://www.baidu.com/"
        
//        Alamofire.request("https://httpbin.org/get").responseJSON { response in
////            print(response.request!)  // original URL request
////            print(response.response!) // HTTP URL response
////            print(response.data!)     // server data
////            print(response.result)   // result of response serialization
//
//            if let JSON = response.result.value {
//                print("JSON: \(JSON)")
//            }
//
//            debugPrint(response.result.isSuccess)
//
//        }
        
//        let request = NSURLRequest.init(url: URL.init(string: urlStr)!)
        
//        let url = URL.init(string: urlStr)
//
//        let config: URLSessionConfiguration = URLSessionConfiguration.default
//
//        manger = SessionManager.init(configuration: config, delegate: SessionDelegate.init(), serverTrustPolicyManager: ServerTrustPolicyManager?)
//
//        request(url!, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).validate { (request, response, data) -> Request.ValidationResult in
//
////            print(data)
//            return .success
//        }
//            .responseJSON { (response) in
//            debugPrint(response)
//        }
        
    }
    
    func sendRequest(url: String, parms: Parameters, method: HTTPMethod) {
        
        
        
//        Alamofire.request(url, method: method, parameters: parms, encoding: JSONEncoding.default)
//            .downloadProgress(queue: DispatchQueue.global(qos: .utility)) { progress in
//                print("Progress: \(progress.fractionCompleted)")
//            }
//            .validate { request, response, data in
//                // Custom evaluation closure now includes data (allows you to parse data to dig out error messages if necessary)
//                return .success
//            }
//            .responseJSON { response in
//                debugPrint(response)
//        }
        
        
//        Alamofire.request(url, method: method, parameters: parms, encoding: JSONEncoding.default).validate { (request, response, data) -> Request.ValidationResult in
//            guard let data = data else { return .failure(Error.sendDesc) }
//            return .success
//            
//            }.response { (response) in
//                debugPrint(response)
//        }
        
        
    }
    
    
}


