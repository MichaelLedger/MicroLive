//
//  String+.swift
//  MicroLive
//
//  Created by MountainX on 2018/11/15.
//  Copyright © 2018年 MTX Software Technology Co.,Ltd. All rights reserved.
//

import Foundation

extension String {
    func md5() -> String {
        let cStr = cString(using: .utf8)
        let buffer = UnsafeMutablePointer<UInt8>.allocate(capacity: Int(CC_MD5_DIGEST_LENGTH))
        CC_MD5(cStr, CC_LONG(strlen(cStr)), buffer)
        var hash = ""
        for idx in 0..<Int(CC_MD5_DIGEST_LENGTH) {
            hash.append(String(format: "%02x", buffer[idx]))
        }
        //buffer.deallocate()
        free(buffer)
        return hash
    }
    
    func substring(location index:Int, length:Int) -> String {
        if self.count > index {
            let startIndex = self.index(self.startIndex, offsetBy: index)
            let endIndex = self.index(self.startIndex, offsetBy: index + length)
            let subString = self[startIndex..<endIndex]
            return String(subString)
        } else {
            return self
        }
    }
    
    func substring(range:NSRange) -> String {
        if self.count > range.location {
            let startIndex = self.index(self.startIndex, offsetBy: range.location)
            let endIndex = self.index(self.startIndex, offsetBy: range.location + range.length)
            let subString = self[startIndex..<endIndex]
            return String(subString)
        } else {
            return self
        }
    }
    func urlScheme(scheme:String) -> URL? {
        if let url = URL.init(string: self) {
            var components = URLComponents.init(url: url, resolvingAgainstBaseURL: false)
            components?.scheme = scheme
            return components?.url
        }
        return nil
    }
    
    static func readJson2DicWithFileName(fileName:String) -> [String:Any] {
        let path = Bundle.main.path(forResource: fileName, ofType: "json") ?? ""
        var dict = [String:Any]()
        do{
            let data = try Data.init(contentsOf: URL.init(fileURLWithPath: path))
            dict = try JSONSerialization.jsonObject(with: data, options:[]) as! [String : Any]
        }catch {
            print(error.localizedDescription)
        }
        return dict
    }
    
    static func format(decimal:Float, _ maximumDigits:Int = 1, _ minimumDigits:Int = 1) ->String? {
        let number = NSNumber(value: decimal)
        let numberFormatter = NumberFormatter()
        numberFormatter.maximumFractionDigits = maximumDigits //设置小数点后最多2位
        numberFormatter.minimumFractionDigits = minimumDigits //设置小数点后最少2位（不足补0）
        return numberFormatter.string(from: number)
    }
    
    static func formatCount(count:NSInteger) -> String {
        if count < 10000  {
            return String.init(count)
        } else {
            return (String.format(decimal: Float(count)/Float(10000)) ?? "0") + "w"
        }
    }
    
    
    
    func singleLineSizeWithText(font:UIFont) -> CGSize {
        return self.size(withAttributes: [NSAttributedStringKey.font : font])
    }
    
    func singleLineSizeWithAttributeText(font:UIFont) -> CGSize {
        let attributes = [NSAttributedStringKey.font:font]
        let attString = NSAttributedString(string: self,attributes: attributes)
        let framesetter = CTFramesetterCreateWithAttributedString(attString)
        return CTFramesetterSuggestFrameSizeWithConstraints(framesetter, CFRange(location: 0,length: 0), nil, CGSize(width: Double.greatestFiniteMagnitude, height: Double.greatestFiniteMagnitude), nil)
    }
}
