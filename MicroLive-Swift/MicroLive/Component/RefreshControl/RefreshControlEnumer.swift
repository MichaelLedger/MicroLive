//
//  RefreshControlEnumer.swift
//  MicroLive
//
//  Created by MountainX on 2018/11/18.
//  Copyright © 2018年 MTX Software Technology Co.,Ltd. All rights reserved.
//

import UIKit

/// 刷新类型
///
/// - RefreshHeaderStateIdle: 闲置
/// - RefreshHeaderStatePulling: 下拉
/// - RefreshHeaderStateRefreshing: 刷新
/// - RefreshHeaderStateEnd: 停止
enum RefreshingType: Int {
    case RefreshHeaderStateIdle
    case RefreshHeaderStatePulling
    case RefreshHeaderStateRefreshing
    case RefreshHeaderStateEnd
}
