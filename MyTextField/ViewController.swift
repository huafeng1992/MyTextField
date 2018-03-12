//
//  ViewController.swift
//  ChartsView
//
//  Created by huafeng on 2018/1/30.
//  Copyright © 2018年 huafeng. All rights reserved.
//

import UIKit

struct GetDate {
    
    static func getNow() -> Date {
        // 得到当前时间（世界标准时间 UTC/GMT）
        var date:NSDate = NSDate()
        // 设置系统时区为本地时区
        let zone:NSTimeZone = NSTimeZone.system as NSTimeZone
        // 计算本地时区与 GMT 时区的时间差
        let second:Int = zone.secondsFromGMT
        // 在 GMT 时间基础上追加时间差值，得到本地时间
        date = date.addingTimeInterval(TimeInterval(second))
        return date as Date
    }
    
    static func getGMTTimeZone(_ date: Date) -> Date {
        let zone:NSTimeZone = NSTimeZone.system as NSTimeZone
        // 计算本地时区与 GMT 时区的时间差
        let second:Int = zone.secondsFromGMT
        // 在 GMT 时间基础上追加时间差值，得到本地时间
        let newdate = date.addingTimeInterval(TimeInterval(second))
        return newdate
    }
    
    static func getToDay() -> Date {
        // 变为0点的时间
        let dateFomatter = DateFormatter()
        dateFomatter.dateFormat = "yyyy-MM-dd 00:00:00"
        dateFomatter.timeZone = TimeZone.init(abbreviation: "GMT")
        let str = dateFomatter.string(from: getNow())
        let todayDate = dateFomatter.date(from: str)
        return todayDate!
    }
    
    static func getToDayToDays(num: Int) -> Date {
        let timeInvel = getToDay().timeIntervalSince1970
        let newTimeInvel = timeInvel + Double(60 * 60 * 24 * num)
        let date = Date.init(timeIntervalSince1970: newTimeInvel)
        return date
    }
    
    static func getNowToDays(num: Int) -> Date {
        let timeInvel = getNow().timeIntervalSince1970
        let newTimeInvel = timeInvel + Double(60 * 60 * 24 * num)
        let date = Date.init(timeIntervalSince1970: newTimeInvel)
        return date
    }
    
    static func getInterval(_ date: Date) -> TimeInterval {
        let newdate = getGMTTimeZone(date)
        let timeInterval = newdate.timeIntervalSince1970
        return timeInterval
    }
    
    static func getCurrentMonth() -> String {
        let dateFomatter = DateFormatter()
        dateFomatter.dateFormat = "MM"
        dateFomatter.timeZone = TimeZone.init(abbreviation: "GMT")
        return dateFomatter.string(from: getNow())
    }
    
    
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let btn = UIButton.init(frame: CGRect.init(x: 100, y: 200, width: 100, height: 40))
//        btn.setTitle("Button", for: .normal)
//        btn.setTitleColor(.red, for: .normal)
//        btn.addTarget(self, action: #selector(btnAction(btn:)), for: .touchUpInside)
//        view.addSubview(btn)
//
////        jumAction()
//
//
//        dictionaryToJson(dict: ["https://www.baidu.com/百度"])
        
        GetDate.getCurrentMonth()
        
        
    }
    
    @objc func btnAction(btn: UIButton) {
//        jumAction()
    }
    
    func jumAction() {
        let chartVC = ChartsViewController()
        present(chartVC, animated: true, completion: nil)
    }
}


/*!
 * @brief 把格式化的JSON格式的字符串转换成字典
 * @param jsonString JSON格式的字符串
 * @return 返回字典
 */

//+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString {
//    if (jsonString == nil) {
//        return nil;
//    }
//    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
//    NSError *err;
//    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&err];
//    if(err) {
//        NSLog(@"json解析失败：%@",err);
//        return nil;
//    }
//    return dic;
//    }
//

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














