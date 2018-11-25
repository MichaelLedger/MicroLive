//
//  NSTextAttachment+Emotion.swift
//  Douyin
//
//  Created by MountainX on 2018/8/9.
//  Copyright © 2018年 MountainX. All rights reserved.
//

import Foundation
extension NSTextAttachment {
    static var _emotionKey = "emotionKey"
    var emotionKey:String? {
        get{
            return objc_getAssociatedObject(self, &NSTextAttachment._emotionKey) as? String
        }
        set {
            objc_setAssociatedObject(self, &NSTextAttachment._emotionKey, newValue, .OBJC_ASSOCIATION_RETAIN)
        }
    }
}
