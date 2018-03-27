//
//  HFAlamofire.swift
//  MyTextField
//
//  Created by huafeng on 2018/3/16.
//  Copyright © 2018年 huafeng. All rights reserved.
//

import Foundation
import Alamofire


extension Notification.Key {
    
    public static let UUID = "UUID"
    
}




struct HFAlamofire {
    
    static let url = ""
    
    static func start() {
        
        print("开始")
        
        send(url: "https://httpbin.org/post ", parameters: nil, headers: nil)
        
    }
}

extension HFAlamofire {
    
    /// 自定义配置请求
    @discardableResult
    static func send(url: URLConvertible, parameters: Parameters?, headers: HTTPHeaders?) -> DataRequest {
        return linkServering(url: url, method: .post, parameters: parameters, headers: headers).responseJSON(completionHandler: { (response) in
            switch response.result {
            case .success(let value):
                print(value)
            case .failure(let error):
                let aferror = error as! AFError
                print(aferror.errorDescription ?? "")
            }
        })
    }
    
}

extension HFAlamofire {
    
    /// 该区域 封装常用的get与post请求
    
    /// get请求
    static func linkGetInServering(url: URLConvertible, parameters: Parameters?, headers: HTTPHeaders?) -> DataRequest {
        return linkServering(url: url, method: .get, parameters: parameters, headers: headers)
    }
    
    /// post请求
    static func linkPostInServering(url: URLConvertible, parameters: Parameters?, headers: HTTPHeaders?) -> DataRequest {
        return linkServering(url: url, method: .post, parameters: parameters, headers: headers)
    }
}

extension HFAlamofire {
    
    /// 调用了基础请求，默认JSONEncoding的编码
    static func linkServering(url: URLConvertible, method: HTTPMethod, parameters: Parameters?, headers: HTTPHeaders?) -> DataRequest {
        return sendBase(url: url, method: method, parameters: parameters, encoding: JSONEncoding.default, headers: headers)
    }
}

let sessionManager: SessionManager = {
    
    let manager = SessionManager.default
    
    
    return manager
}()

extension HFAlamofire {
    
    /// 基础请求
    ///
    /// - Parameters:
    ///   - url: 地址 遵循 URLConvertible 的任意对象
    ///   - method: http 1.1 的请求类型 遵循HTTPMethod 枚举中的对象
    ///   - parameters: 请求参数 Parameters 类型
    ///   - encoding: 编码格式
    ///   - headers: 请求头
    /// - Returns: 返回 DataRequest 对象
    static func sendBase(url: URLConvertible, method: HTTPMethod, parameters: Parameters?, encoding: ParameterEncoding, headers: HTTPHeaders?) -> DataRequest {
        
        return sessionManager.request(url, method: method, parameters: parameters, encoding: encoding, headers: headers)
    }
}
