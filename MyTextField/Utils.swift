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
    
    // 获取日期 num为天数
    static func getToDayToDays(num: Int) -> Date {
        let timeInvel = getToDay().timeIntervalSince1970
        let newTimeInvel = timeInvel + Double(60 * 60 * 24 * num)
        let date = Date.init(timeIntervalSince1970: newTimeInvel)
        return date
    }
    
    // 获取日期 num为天数
    static func getNowToDays(num: Int) -> Date {
        let timeInvel = getNow().timeIntervalSince1970
        let newTimeInvel = timeInvel + Double(60 * 60 * 24 * num)
        let date = Date.init(timeIntervalSince1970: newTimeInvel)
        return date
    }
    
    // 获取时间戳
    static func getInterval(_ date: Date) -> TimeInterval {
        let newdate = getGMTTimeZone(date)
        let timeInterval = newdate.timeIntervalSince1970
        return timeInterval
    }
    
    // 获取当前月
    static func getCurrentMonth() -> String {
//        let dateFomatter = DateFormatter()
//        dateFomatter.dateFormat = DateFormatterChar.Month.rawValue
//        dateFomatter.timeZone = TimeZone.init(abbreviation: "GMT")
        let calendar = Calendar.current
        let commponents = calendar.dateComponents([.month], from: getNow())
        return "\(commponents.month ?? 0)"
    }
    
    static func getCurrentYear() -> String {
        let calendar = Calendar.current
        let commponents = calendar.dateComponents([.year], from: getNow())
        return "\(commponents.year ?? 0)"
    }
}

extension GetDate {
    
    enum DateFormatterChar: String {
        case Month = "MM"
        case YearMonthDay = "yyyy-MM-dd"
        case YearMonthDayAndTime = "yyyy-MM-dd HH:mm:ss"
    }
    
    static func getCalendar() -> Calendar {
        var calendar = Calendar.current
        calendar.firstWeekday = 2
//        calendar.minimumDaysInFirstWeek = 7
        calendar.timeZone = TimeZone.init(abbreviation: "GMT")!
        
        return calendar
    }
    
    static func getInterval(dateStr: String, dateFormatStr: DateFormatterChar) -> TimeInterval? {
        
        let dateFormat = DateFormatter()
        dateFormat.timeZone = TimeZone.init(abbreviation: "GMT")
        dateFormat.dateFormat = dateFormatStr.rawValue
        let date = dateFormat.date(from: dateStr)
        return date?.timeIntervalSince1970
    }
    
    // WeekDay 处理
    static func getWeekday(_ date: Date) -> Int? {
        let calendar = getCalendar()
        let commponents = calendar.dateComponents([.weekday], from: date)
        if commponents.weekday == nil {
            return nil
        } else {
            // commponents.weekday 获取到的week 一般会以星期天为1，那么需要处理-1
            var rtnNum = commponents.weekday! - 1
            if rtnNum == 0 {
                rtnNum = 7
            }
            return rtnNum
        }
    }
    
    static func getWeekday(_ dateStr: String) -> Int? {
        
        let dateFormat = DateFormatter()
        dateFormat.timeZone = TimeZone.init(abbreviation: "GMT")
        dateFormat.dateFormat = DateFormatterChar.YearMonthDay.rawValue
        let date = dateFormat.date(from: dateStr)
        if date == nil {
            return nil
        } else {
            return getWeekday(date!)
        }
    }
    
    static func weekInString<T>(weekStr: String, date: T) -> Bool {
        
        if date is String {
            
            print("日期字符")
        } else if date is Date{
            print("日期对象")
        } else {
            print("类型错误")
            return false
        }
        
        
        // weekStr: 1,2,3,4,5,6,7 使用字符串区分星期
//        weekStr.rangeOfCharacter(from: <#T##CharacterSet#>)
        
        
        
        return true
    }
    
    
    
    
}
