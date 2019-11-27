//
//  ViewController.swift
//  IOSPasteBinTutorial
//
//  Created by 邹俊 on 2019/1/8.
//  Copyright © 2019 邹俊. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var fromTextField: UITextField!
    @IBOutlet weak var toTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        fromTextField.delegate = self
        toTextField.delegate = self
        
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    

    @IBAction func copyText(_ sender: Any) {
        let copyString = fromTextField.text
        let pasteBoard = UIPasteboard.general
        pasteBoard.string = copyString
        
        
    }
    
}

