//
//  ViewController.swift
//  You are awesome
//
//  Created by K Gold on 8/29/17.
//  Copyright © 2017 Katie Gold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   var index = 0
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageLabelOther: UILabel!
    
// This code executes when the view controller loads
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let messages = ["you are fantastic!",
                        "you are great!",
                        "you are sweet!",
                        "you are amazing!",
                        "you brighten my day!",
                        "you are da bomb",
                        "I can't wait to use your app"]
        
        var newIndex = -1
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(messages.count)))
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        
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

