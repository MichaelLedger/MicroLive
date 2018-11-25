//
//  Notification+.swift
//  Douyin
//
//  Created by MountainX on 2018/8/7.
//  Copyright © 2018年 MountainX. All rights reserved.
//

import Foundation

extension Notification {
    
    func keyBoardHeight() -> CGFloat {
        if let userInfo = self.userInfo {
            if let value = userInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue {
                let size = value.cgRectValue.size
                return UIInterfaceOrientation.portrait.isLandscape ? size.width : size.height
            }
        }
        return 0
    }
    
}
