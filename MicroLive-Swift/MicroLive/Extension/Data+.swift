//
//  Data+.swift
//  Douyin
//
//  Created by MountainX on 2018/8/6.
//  Copyright © 2018年 MountainX. All rights reserved.
//

import Foundation

extension Data
{
    func subdata(in range: CountableClosedRange<Data.Index>) -> Data {
        return self.subdata(in: range.lowerBound..<range.upperBound + 1)
    }
}
