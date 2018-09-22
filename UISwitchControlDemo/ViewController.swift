//
//  ViewController.swift
//  UISwitchControlDemo
//
//  Created by Akash Technolabs on 04/11/17.
//  Copyright © 2017 Akash Technolabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mySwitchControll: UISwitch!
    
    @IBOutlet weak var btnStepper: UIStepper!
    
    @IBOutlet weak var btnSlider: UISlider!
    
    @IBOutlet weak var lblCount: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func btnSwitchAction(_ sender: UISwitch)
    {
        if mySwitchControll.isOn
        {
            view.backgroundColor = UIColor.red
        }
        else
        {
            view.backgroundColor = UIColor.cyan
        }
        
    }
    
    
    @IBAction func btnSliderAction(_ sender: UISlider)
    {
        self.lblCount.font = UIFont.systemFont(ofSize: (CGFloat(btnSlider.value * 3.0)))
        lblCount.text = Int(sender.value).description
    }
    
    @IBAction func btnStepperAction(_ sender: UIStepper)
    {
        lblCount.text = Int(sender.value).description
        
    }
    
}

