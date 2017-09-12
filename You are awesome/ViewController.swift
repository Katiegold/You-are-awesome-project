//
//  ViewController.swift
//  You are awesome
//
//  Created by K Gold on 8/29/17.
//  Copyright © 2017 Katie Gold. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //MARK: - PROPERTIES
    
    var index = 0
    var imageNumber = 0
    var soundNumber = -1
    let numberOfImages = 4
    let numberOfSounds = 4
    var awesomePlayer = AVAudioPlayer()
    
    @IBOutlet weak var awesomeImage: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageLabelOther: UILabel!
    @IBOutlet weak var soundSwitch: UISwitch!
    
    //FIXME: - Please repair this error
    //TODO: - UPDATE viewDidLoad
// This code executes when the view controller loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - FUNCTIONS
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer) {
        //can we load in the file soundName?
        if let sound = NSDataAsset(name: soundName) {
            // check if sound.data is a sound file
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            }catch{
                // if sound.data is not a valid audio file
                print("ERROR: data in \(soundName) couldn't be played as a sound")
            }
        } else {
            //if reading in the NSDataAsset didn't work, tell the user/report the error
            print("ERROR: file \(soundName) didn't load")
        }
    }
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
       var newIndex = -1
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(maxValue)))
        } while index == newIndex
        return newIndex
    }
    
    //MARK: - ACTIONS
    
    @IBAction func soundSwitchPressed(_ sender: UISwitch) {
        if !soundSwitch.isOn && soundNumber != -1 {
            //stop playing
            awesomePlayer.stop()
    
        }
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let messages = ["you are fantastic!",
                        "you are great!",
                        "you are sweet!",
                        "you are amazing!",
                        "you brighten my day!",
                        "you are da bomb",
                        "I can't wait to use your app"]
        
  
        // Show a message
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        // show an image
        imageNumber = nonRepeatingRandom(lastNumber: imageNumber, maxValue: numberOfImages)
        awesomeImage.image = UIImage(named: "image\(imageNumber)")
        
        if soundSwitch.isOn  {
            //get a random number to use in our soundName file
            soundNumber = nonRepeatingRandom(lastNumber: soundNumber, maxValue: numberOfSounds)
            
            // play a sound
            let soundName = "sound\(soundNumber)"
            playSound(soundName: soundName, audioPlayer: &awesomePlayer)
        }
    
   
        
        
        
        
        
        
        
        
        //test
//        var randomIndex = Int(arc4random_uniform(UInt32(messages.count)))
//        messageLabel.text = messages[randomIndex]
        
        
//        messageLabel.text = messages[index]
//        index = index + 1
//
//        if index == messages.count {
//            index = 0
//
//        }
    
//        let message1 = "You are FANTASTIC!"
//        let message2 = "You are great!"
//        let message3 = "You are amazing!"
//
//
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//            print(pi)
//        } else if messageLabel.text == message2{
//            messageLabel.text = message3
//        } else {
//            messageLabel.text = message1
//        }
//
    }

    
 
}

