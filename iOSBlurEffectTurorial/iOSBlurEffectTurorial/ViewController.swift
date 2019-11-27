//
//  ViewController.swift
//  iOSBlurEffectTurorial
//
//  Created by 邹俊 on 2019/2/25.
//  Copyright © 2019 邹俊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    @IBAction func blurImage(_ sender: Any) {
        
        let darkBlur = UIBlurEffect(style: .dark)
        let blurView = UIVisualEffectView(effect: darkBlur)
        
        blurView.frame = imageView.bounds
        
        imageView.addSubview(blurView)
    }
    
    
}

