//
//  ViewController.swift
//  IOS12ActivityIndicatorTutorial
//
//  Created by 邹俊 on 2019/11/12.
//  Copyright © 2019 邹俊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func startSpining(_ sender: Any) {
        activityIndicatorView.startAnimating()
    }
    
    @IBAction func stopSpining(_ sender: Any) {
        activityIndicatorView.stopAnimating()
    }
}

