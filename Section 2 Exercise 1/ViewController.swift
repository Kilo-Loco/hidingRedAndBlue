//
//  ViewController.swift
//  Section 2 Exercise 1
//
//  Created by Kyle Lee on 10/26/15.
//  Copyright © 2015 Kyle Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redBomb: UIImageView!
    
    @IBOutlet var blueBomb: UIImageView!
    
    @IBOutlet var redButtonText: UIButton!
    
    @IBOutlet var blueButtonText: UIButton!
    
    var redCounter = 0
    var blueCounter = 0
    
    @IBAction func hideRed(sender: AnyObject) {
        if redCounter % 2 == 0 {
            redBomb.hidden = true
            redButtonText.setTitle("Show Red", forState: .Normal)
        } else {
            redBomb.hidden = false
            redButtonText.setTitle("Hide Red", forState: .Normal)
        }
        redCounter++
    }
    
    @IBAction func hideBlue(sender: AnyObject) {
        if blueCounter % 2 == 0 {
            blueBomb.hidden = true
            blueButtonText.setTitle("Show Blue", forState: .Normal)
        } else {
            blueBomb.hidden = false
            blueButtonText.setTitle("Hide Blue", forState: .Normal)
        }
        blueCounter++
    }
    
    @IBAction func toggleBoth(sender: AnyObject) {
        if blueCounter % 2 == 0 {
            blueBomb.hidden = true
            blueButtonText.setTitle("Show Blue", forState: .Normal)
        } else {
            blueBomb.hidden = false
            blueButtonText.setTitle("Hide Blue", forState: .Normal)
        }
        blueCounter++
        
        if redCounter % 2 == 0 {
            redBomb.hidden = true
            redButtonText.setTitle("Show Red", forState: .Normal)
        } else {
            redBomb.hidden = false
            redButtonText.setTitle("Hide Red", forState: .Normal)
        }
        redCounter++
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

