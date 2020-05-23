//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    let eggTimes: [String: Int] = ["Soft": 300, "Medium": 420, "Hard": 720]
    
    var secondsRemaining: Float = 60
    var currentTimerLength = 0
    
    var timer = Timer()
    
    var player: AVAudioPlayer!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var eggTimerLabel: UILabel!
    @IBOutlet weak var eggTimerProgressBar: UIProgressView!
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        // Disable current timers
        timer.invalidate()
        
        // Make progress bar visible
        eggTimerProgressBar.isHidden = false
        
        // Get the title of button clicked and display it as the title on the App
        let title = sender.titleLabel?.text
        titleLabel.text = title!
        
        secondsRemaining = Float(eggTimes[title!]!)
        currentTimerLength = Int(secondsRemaining)
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(update), userInfo: nil, repeats: true)
        
    }
    
    @objc func update() {
        eggTimerLabel.text = TimeInterval(secondsRemaining).stringFromTimeInterval()
        eggTimerProgressBar.progress = (Float(currentTimerLength) - secondsRemaining) / Float(currentTimerLength)
        if(secondsRemaining > 0) {
            secondsRemaining -= 0.1
        } else {
            timer.invalidate()
            titleLabel.text = "DONE!!!"
            playSound()
        }
    }
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3") else { return }
        try! AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
        try! AVAudioSession.sharedInstance().setActive(true)
        player = try! AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

        guard let player = player else { return }

        player.play()
    }
    
    func timeString(time:TimeInterval) -> String {
        let seconds = time
        let minutes = seconds / 60
        let secondsFraction = seconds - Double(Int(seconds))
        return String(format:"%02i:%02i.%01i",Int(minutes),Int(seconds),Int(secondsFraction * 10.0))
    }
    
    
    
}
