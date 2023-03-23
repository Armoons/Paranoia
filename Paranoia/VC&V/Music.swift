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
    var audioPlayerTap: AVAudioPlayer?
    var audioPlayerMusic: AVAudioPlayer?
    
    func tapSound() {
        isSoundActive() ? sound(.on) : nil
    }
    
    func sound(_ state: SoundState) {
        if let bundle = Bundle.main.path(forResource: "TapSound", ofType: "mp3") {
            let backgroundMusic = NSURL(fileURLWithPath: bundle)
            do {
                audioPlayerTap = try AVAudioPlayer(contentsOf:backgroundMusic as URL)
                try AVAudioSession.sharedInstance().setActive(true)
                guard let audioPlayer = audioPlayerTap else { return }
                audioPlayer.prepareToPlay()
                audioPlayer.play()
                switch state {
                case .on:
                    audioPlayer.prepareToPlay()
                    audioPlayer.play()
                    UserDefaults.standard.set(true, forKey: "Sound")
                case .off:
                    audioPlayer.stop()
                    UserDefaults.standard.set(false, forKey: "Sound")
                }
            } catch {
                print(error)
            }
        }
    }
    
    func music(_ state: MusicState) {
        
        if let bundle = Bundle.main.path(forResource: "Avetis Berberyan, Loneliness", ofType: "mp3") {
            let backgroundMusic = NSURL(fileURLWithPath: bundle)
            do {
                audioPlayerMusic = try AVAudioPlayer(contentsOf:backgroundMusic as URL)
                try AVAudioSession.sharedInstance().setActive(true)
                guard let audioPlayer = audioPlayerMusic else { return }
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
            } catch {
                print(error)
            }
        }
    }
    
    func isMusicActive() -> Bool {
        UserDefaults.standard.bool(forKey: "Music")
    }
    
    func isSoundActive() -> Bool {
        UserDefaults.standard.bool(forKey: "Sound")
    }
}
