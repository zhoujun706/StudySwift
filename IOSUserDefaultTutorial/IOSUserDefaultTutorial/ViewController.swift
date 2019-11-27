//
//  ViewController.swift
//  IOSUserDefaultTutorial
//
//  Created by 邹俊 on 2019/1/13.
//  Copyright © 2019 邹俊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bluetoothSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let userDefault = UserDefaults.standard
        if userDefault.object(forKey: "switchState") != nil {
            bluetoothSwitch.isOn = userDefault.bool(forKey: "switchState")
        }
        
    }

    @IBAction func saveSwitchState(_ sender: Any) {
        
        let userDefault = UserDefaults.standard
        
        userDefault.set(bluetoothSwitch.isOn, forKey: "switchState")
        userDefault.synchronize()
    }
    
}

