//
//  ViewController.swift
//  IOSPlayMusicAVAudioPlayerTutorial
//
//  Created by 邹俊 on 2019/1/10.
//  Copyright © 2019 邹俊. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var trackTitle: UILabel!
    @IBOutlet weak var playedTime: UILabel!
    
    var audioPlayer = AVAudioPlayer()
    var isPlaying = false
    var timer: Timer!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let fileName = "Future Islands - Tin Man"
        
        trackTitle.text = fileName
        
        let path = Bundle.main.path(forResource: fileName, ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
        } catch {
            
        }
        
        
        
    }

    
    @IBAction func playOrPauseMusic(_ sender: Any) {
        
        if isPlaying {
            audioPlayer.pause()
        } else {
            audioPlayer.play()
            
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        }
        isPlaying = !isPlaying
    }
    
    @IBAction func stopMusic(_ sender: Any) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0
        isPlaying = false
        
    }
    
    
    @objc func updateTime() {
        let currentTime = Int(audioPlayer.currentTime)
        let minutes = currentTime / 60
        let seconds = currentTime - minutes * 60
        
        playedTime.text = String(format: "%02d : %02d", minutes, seconds) as String
        
        
        
    }
    
}

