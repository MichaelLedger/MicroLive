//
//  Array+.swift
//  Douyin
//
//  Created by MountainX on 2018/8/17.
//  Copyright © 2018年 MountainX. All rights reserved.
//

import Foundation
extension Array {
    mutating func removeAtIndexes (indexs:[Int]) -> () {
        for index in indexs.sorted(by: >) {
            self.remove(at: index)
        }
    }
}
