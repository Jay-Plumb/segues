//
//  ViewController.swift
//  seques
//
//  Created by Jason Plumb on 23/12/2015.
//  Copyright © 2015 JasonPlumb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // Add data here
    @IBAction func loadGreen(sender: AnyObject!) {
        // User sender to pass data
        let str = "Hey, we just came from the lightblue screen"
        performSegueWithIdentifier("goToGreen", sender: str)
    }
    
    @IBAction func loadRed(sender: AnyObject) {
        performSegueWithIdentifier("goToRed", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // This is where you do work right before the view loads
        // Keep in mind the next view controller has already been initialized
        if segue.identifier == "goToGreen" {
            if let greenVC = segue.destinationViewController as? GreenViewController {
                if let theString = sender as? String {
                    greenVC.transferText = theString
                }
            }
        }
    }
}

