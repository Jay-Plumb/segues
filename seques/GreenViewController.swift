//
//  GreenViewController.swift
//  seques
//
//  Created by Jason Plumb on 23/12/2015.
//  Copyright © 2015 JasonPlumb. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet weak var mainLbl: UILabel!
    var transferText = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // Added function whenever this view appears
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        mainLbl.text = transferText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
