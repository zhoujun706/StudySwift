//
//  ViewController.swift
//  IOSCustomFontTutorial
//
//  Created by 邹俊 on 2019/1/8.
//  Copyright © 2019 邹俊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let fontFamilyNames = UIFont.familyNames
        
        for familyName in fontFamilyNames {
            print("Font family name is [\(familyName)]")
            let names = UIFont.fontNames(forFamilyName: familyName)
            print("Font name is [\(names)]")
            
        }
        
        
        textView.font = UIFont(name: "orangejuice", size: 20.0)
        
        
    }


}

