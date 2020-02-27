//
//  PlaySound.swift
//  SwiftUI Course
//
//  Created by Daniel Vázquez on 26/02/20.
//  Copyright © 2020 Daniel Vázquez. All rights reserved.
//

import Foundation
import AVFoundation

// MARK: - Audio Player

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not find and play the sound file")
        }
    }
}
