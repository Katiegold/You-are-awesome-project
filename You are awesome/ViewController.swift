//
//  ViewController.swift
//  You are awesome
//
//  Created by K Gold on 8/29/17.
//  Copyright © 2017 Katie Gold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
      let pi = 3.1415926535897932384626
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageLabelOther: UILabel!
    
// This code executes when the view controller loads
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(pi)
        
   
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
    
        let message1 = "You are FANTASTIC!"
        let message2 = "You are great!"
        let message3 = "You are amazing!"
      
        
        if messageLabel.text == message1 {
            messageLabel.text = message2
            print(pi)
            
        } else if messageLabel.text == message2{
            messageLabel.text = message3
    
            
        } else {
            messageLabel.text = message1
        }
    
    }

    
 
}

