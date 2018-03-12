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
        
        print("这是一条测试")
        print(GetDate.getCurrentMonth())
    }
    
    @objc func btnAction(btn: UIButton) {

        print("这是一条测试2")
    }
    
    func jumAction() {
        let chartVC = ChartsViewController()
        present(chartVC, animated: true, completion: nil)
    }
}

func dictionaryToJson(dict: Any) -> String? {
    do {
        let data = try JSONSerialization.data(withJSONObject: dict, options: .prettyPrinted)

        //        public static let ascii: String.Encoding
        print(String.init(data: data, encoding: .ascii)!, "** ascii")
        //        public static let nextstep: String.Encoding
        print(String.init(data: data, encoding: .nextstep)!, "** nextstep")
        //        public static let japaneseEUC: String.Encoding
        //    print(String.init(data: data, encoding: .japaneseEUC)!, "** japaneseEUC")
        //        public static let utf8: String.Encoding
        print(String.init(data: data, encoding: .utf8)!, "** utf8")
        //        public static let isoLatin1: String.Encoding
        print(String.init(data: data, encoding: .isoLatin1)!, "** isoLatin1")
        //        public static let symbol: String.Encoding
        //    print(String.init(data: data, encoding: .symbol)!, "** symbol")
        //        public static let nonLossyASCII: String.Encoding
        //    print(String.init(data: data, encoding: .nonLossyASCII)!, "** nonLossyASCII")
        //        public static let shiftJIS: String.Encoding
        print(String.init(data: data, encoding: .shiftJIS)!, "** shiftJIS")
        //        public static let isoLatin2: String.Encoding
        print(String.init(data: data, encoding: .isoLatin2)!, "** isoLatin2")
        //        public static let unicode: String.Encoding
        print(String.init(data: data, encoding: .unicode)!, "** unicode")
        //        public static let windowsCP1251: String.Encoding
        print(String.init(data: data, encoding: .windowsCP1251)!, "** windowsCP1251")
        //        public static let windowsCP1252: String.Encoding
        print(String.init(data: data, encoding: .windowsCP1252)!, "** windowsCP1252")
        //        public static let windowsCP1253: String.Encoding
        print(String.init(data: data, encoding: .windowsCP1253)!, "** windowsCP1253")
        //        public static let windowsCP1254: String.Encoding
        print(String.init(data: data, encoding: .windowsCP1254)!, "** windowsCP1254")
        //        public static let windowsCP1250: String.Encoding
        print(String.init(data: data, encoding: .windowsCP1250)!, "** windowsCP1250")
        //        public static let iso2022JP: String.Encoding
        print(String.init(data: data, encoding: .iso2022JP)!, "** iso2022JP")
        //        public static let macOSRoman: String.Encoding
        print(String.init(data: data, encoding: .macOSRoman)!, "** macOSRoman")
        //        public static let utf16: String.Encoding
        print(String.init(data: data, encoding: .utf16)!, "** utf16")
        //        public static let utf16BigEndian: String.Encoding
        print(String.init(data: data, encoding: .utf16BigEndian)!, "** utf16BigEndian")
        //        public static let utf16LittleEndian: String.Encoding
        print(String.init(data: data, encoding: .utf16LittleEndian)!, "** utf16LittleEndian")
        //        public static let utf32: String.Encoding
        //    print(String.init(data: data, encoding: .utf32)!, "** utf32")
        //        public static let utf32BigEndian: String.Encoding
        //    print(String.init(data: data, encoding: .utf32BigEndian)!, "** utf32BigEndian")
        //        public static let utf32LittleEndian: String.Encoding
        //    print(String.init(data: data, encoding: .utf32LittleEndian)!, "** utf32LittleEndian")
        
        
        
//        print(String.init(data: data, encoding: .utf8)!)
//        print(String.init(data: data, encoding: .ascii)!)
//        print(String.init(data: data, encoding: .utf8)!)
        
        return String.init(data: data, encoding: .utf8)
    } catch {
        return nil
    }
}














