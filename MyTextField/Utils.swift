//
//  Utils.swift
//  MyTextField
//
//  Created by huafeng on 2018/3/12.
//  Copyright © 2018年 huafeng. All rights reserved.
//

import Foundation

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
