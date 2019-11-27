//
//  ViewController.swift
//  IOSCocoapodsTutorial
//
//  Created by 邹俊 on 2019/1/11.
//  Copyright © 2019 邹俊. All rights reserved.
//

import UIKit
import FontBlaster

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        FontBlaster.debugEnabled = true
        FontBlaster.blast()
        
        label.font = UIFont(name: "OpenSans-Bold", size: 30)
        label.text = "Testing CocoaPods"
    }


}

