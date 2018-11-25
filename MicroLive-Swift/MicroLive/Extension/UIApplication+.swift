//
//  UIApplication+.swift
//  Douyin
//
//  Created by MountainX on 2018/8/9.
//  Copyright © 2018年 MountainX. All rights reserved.
//

import Foundation

extension UIApplication {
    var statusBarView: UIView? {
        if responds(to: Selector(("statusBar"))) {
            return value(forKey: "statusBar") as? UIView
        }
        return nil
    }
}
