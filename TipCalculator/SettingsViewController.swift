//
//  SettingsViewController.swift
//  tips
//
//  Created by Amarpreet Johal on 9/18/16.
//  Copyright © 2016 Johal. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipPercentControl: UISegmentedControl!
    @IBOutlet weak var roundingControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        let defaults = NSUserDefaults.standardUserDefaults()
        let percentIndex = defaults.integerForKey("tip_percent")
        let roundingIndex = defaults.integerForKey("rounding")

        tipPercentControl.selectedSegmentIndex = percentIndex
        roundingControl.selectedSegmentIndex = roundingIndex
    }
    
    @IBAction func onDefaultPercentChanged(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        let index = tipPercentControl.selectedSegmentIndex

        defaults.setInteger(index, forKey: "tip_percent")
        defaults.synchronize()
    }

    @IBAction func onRoundingChanged(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        let index = roundingControl.selectedSegmentIndex

        defaults.setInteger(index, forKey: "rounding")
        defaults.synchronize()
    }
}
