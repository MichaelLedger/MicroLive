//
//  RefreshControl.swift
//  MicroLive
//
//  Created by MountainX on 2018/11/18.
//  Copyright © 2018年 MTX Software Technology Co.,Ltd. All rights reserved.
//

import UIKit

typealias OnRefresh = () -> Void

class RefreshControl: UIControl {
    
    let contentOffsetKeyPath: String = "contentOffset"
    
    let refreshCtrlHeight: CGFloat = 50

    var onRefresh: OnRefresh?
    
    var refreshingType: RefreshingType = .RefreshHeaderStateIdle
    
    var indicator: UIImageView = UIImageView.init(image: #imageLiteral(resourceName: "icon60LoadingMiddle"))
    
    var superScrollView: UIScrollView?
    
    //MARK: Life Cycle
    init() {
        super.init(frame: CGRect(x: 0, y: -refreshCtrlHeight, width: screenWidth, height: refreshCtrlHeight))
        setupUI()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        indicator.snp.makeConstraints { (make) in
            make.center.equalTo(self)
            make.width.equalTo(refreshCtrlHeight / 2)
        }
        if superScrollView == nil {
            superScrollView = self.superview as? UIScrollView
            superScrollView?.addObserver(self, forKeyPath: contentOffsetKeyPath, options: .new, context: nil)
        }
    }
    
    deinit {
        superScrollView?.removeObserver(self, forKeyPath: contentOffsetKeyPath, context: nil)
    }
    
    func setupUI() {
        addSubview(indicator)
    }
    
    //MARK: KVO
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == contentOffsetKeyPath {
            if let superScrollView = self.superview as? UIScrollView {
                if superScrollView.isDragging && refreshingType == .RefreshHeaderStateIdle && superScrollView.contentOffset.y < -refreshCtrlHeight {
                    refreshingType = .RefreshHeaderStatePulling
                }
                if superScrollView.isDragging && refreshingType == .RefreshHeaderStatePulling && superScrollView.contentOffset.y >= -refreshCtrlHeight {
                    startRefresh()
                    onRefresh?()
                }
            }
        } else {
            super.observeValue(forKeyPath: keyPath, of: object, change: change, context: context)
        }
    }
    
    func startRefresh() {
        if refreshingType != .RefreshHeaderStateRefreshing {
            refreshingType = .RefreshHeaderStateRefreshing
            var edgeInsets = superScrollView?.contentInset
            edgeInsets?.top += refreshCtrlHeight
            superScrollView?.contentInset = edgeInsets ?? .zero
            startAnim()
        }
    }
    
    func endRefresh() -> Void {
        if refreshingType != .RefreshHeaderStateIdle {
            refreshingType = .RefreshHeaderStateIdle
            var edgeInsets = superScrollView?.contentInset
            edgeInsets?.top -= refreshCtrlHeight
            superScrollView?.contentInset = edgeInsets ?? .zero
            stopAnim()
        }
    }
    
    func loadAll() -> Void {
        endRefresh()
        refreshingType = .RefreshHeaderStateEnd
        self.isHidden = true
    }
    
    //MARK: Animation
    func startAnim() {
        let rotationAnim = CABasicAnimation.init(keyPath: "transform.rotation.z")
        rotationAnim.toValue = NSNumber(value: .pi * 2.0)
        rotationAnim.duration = 1.5
        rotationAnim.isCumulative = true
        rotationAnim.repeatCount = MAXFLOAT
        indicator.layer.add(rotationAnim, forKey: "rotationAnimation")
    }
    
    func stopAnim() {
        indicator.layer.removeAnimation(forKey: "rotationAnimation")
    }
}
