//
//  BaseResponse.swift
//  Douyin
//
//  Created by MountainX on 2018/8/2.
//  Copyright © 2018年 MountainX. All rights reserved.
//

import Foundation

class BaseResponse: BaseModel {
    var code:Int?
    var message:String?
    var has_more:Int = 0
    var total_count:Int = 0
}
