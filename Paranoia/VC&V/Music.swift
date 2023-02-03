//
//  Music.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 02.02.2023.
//

import Foundation
import AVFoundation

class Music {
    
    static let shared = Music()
    var audioPlayer: AVAudioPlayer?
    
    func tapSound() {
        if let bundle = Bundle.main.path(forResource: "TapSound", ofType: "mp3") {
                let backgroundMusic = NSURL(fileURLWithPath: bundle)
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf:backgroundMusic as URL)
                    try AVAudioSession.sharedInstance().setMode(.default)
                    try AVAudioSession.sharedInstance().setActive(true)
                    try AVAudioSession.sharedInstance().setCategory(.playAndRecord, options: [.defaultToSpeaker, .mixWithOthers])
                    guard let audioPlayer = audioPlayer else { return }
                    audioPlayer.prepareToPlay()
                
                    audioPlayer.play()
                } catch {
                    print(error)
                }
            }
    }
    
    func music(_ state: MysicState) {
        
        if let bundle = Bundle.main.path(forResource: "Avetis Berberyan, Loneliness", ofType: "mp3") {
                let backgroundMusic = NSURL(fileURLWithPath: bundle)
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf:backgroundMusic as URL)
                    try AVAudioSession.sharedInstance().setMode(.default)
                    try AVAudioSession.sharedInstance().setActive(true)
                    try AVAudioSession.sharedInstance().setCategory(.playAndRecord, options: [.defaultToSpeaker, .mixWithOthers])
                    guard let audioPlayer = audioPlayer else { return }
                    audioPlayer.numberOfLoops = -1
                    switch state {
                    case .play:
                        audioPlayer.prepareToPlay()
                        audioPlayer.play()
                        UserDefaults.standard.set(true, forKey: "Music")
                    case .stop:
                        audioPlayer.stop()
                        UserDefaults.standard.set(false, forKey: "Music")
                    }
//                    audioPlayer.prepareToPlay()
                
//                    audioPlayer.play()
                } catch {
                    print(error)
                }
            }
//        
        
//        guard let url = Bundle.main.path(forResource: "Avetis Berberyan, Loneliness", ofType: "mp3") else {
//            print("url isn't found")
//            return
//        }
//
//        do {
//
//            try AVAudioSession.sharedInstance().setCategory(.playAndRecord, options: .defaultToSpeaker)
//            try AVAudioSession.sharedInstance().setActive(true)
//
//            let player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: url))
//
//            player.numberOfLoops = -1
//            switch state {
//            case .play:
//                player.prepareToPlay()
//                player.play()
//                UserDefaults.standard.set(true, forKey: "Music")
//            case .stop:
//                player.stop()
//                UserDefaults.standard.set(false, forKey: "Music")
//            }
//
//        } catch let error {
//            print(error.localizedDescription)
//        }
    }
}
