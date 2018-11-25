//
//  NSAttributedString+.swift
//  Douyin
//
//  Created by MountainX on 2018/8/7.
//  Copyright © 2018年 MountainX. All rights reserved.
//

import Foundation

extension NSAttributedString {
    func multiLineSize(width:CGFloat) -> CGSize {
        let rect = self.boundingRect(with: CGSize.init(width: width, height: CGFloat(MAXFLOAT)), options: [.usesLineFragmentOrigin, .usesFontLeading], context: nil)
        return CGSize.init(width: rect.size.width, height: rect.size.height)
    }
}
