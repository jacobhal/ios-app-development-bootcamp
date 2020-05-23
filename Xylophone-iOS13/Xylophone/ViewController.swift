//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    

    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        
        // Reduce opacity to half (set the background opacity if we do not want to affect the label)
        sender.backgroundColor = sender.backgroundColor?.withAlphaComponent(0.5)
        // sender.alpha = 0.5
        playSound(soundName: sender.currentTitle!)
        //        playSound(soundName: sender.titleLabel?.text)
        //        playSound(soundName: sender.title(for: .normal) ?? "")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //sender.alpha = 1
            sender.backgroundColor = sender.backgroundColor?.withAlphaComponent(1)
        }
    }
    
    func playSound(soundName: String) {
        guard let url = Bundle.main.url(forResource: soundName, withExtension: "wav") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)

            guard let player = player else { return }

            player.play()

        } catch let error {
            print("playSound error: " + error.localizedDescription)
        }
    }
    

}

