//
//  AVPlayerManager.swift
//  Douyin
//
//  Created by MountainX on 2018/8/6.
//  Copyright © 2018年 MountainX. All rights reserved.
//

import Foundation
import AVFoundation

class AVPlayerManager: NSObject {
    
    var playerArray = [AVPlayer]()
    
    private static let instance = { () -> AVPlayerManager in
        return AVPlayerManager.init()
    }()
    
    private override init() {
        super.init()
    }
    
    class func shared() -> AVPlayerManager {
        return instance
    }
    
    static func setAudioMode() {
        do {
            if #available(iOS 10.0, *) {
                try! AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback, mode: AVAudioSessionModeMoviePlayback)
            } else {
                AVAudioSession.sharedInstance().perform(NSSelectorFromString("setCategory:error:"), with: AVAudioSessionModeMoviePlayback)
            }
            try AVAudioSession.sharedInstance().setActive(true)
        } catch {
            print("setAudioMode error:" + error.localizedDescription)
        }
        
    }
    
    func play(player:AVPlayer) {
        for object in playerArray {
            object.pause()
        }
        if !playerArray.contains(player) {
            playerArray.append(player)
        }
        player.play()
    }
    
    func pause(player:AVPlayer) {
        if playerArray.contains(player) {
            player.pause()
        }
    }
    
    func pauseAll() {
        for object in playerArray {
            object.pause()
        }
    }
    
    func replay(player:AVPlayer) {
        for object in playerArray {
            object.pause()
        }
        if playerArray.contains(player) {
            player.seek(to: kCMTimeZero)
            play(player: player)
        } else {
            playerArray.append(player)
            play(player: player)
        }
    }
}
