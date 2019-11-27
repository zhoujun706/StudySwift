//
//  ViewController.swift
//  IOSAirdropTutorial
//
//  Created by 邹俊 on 2019/1/12.
//  Copyright © 2019 邹俊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let image = UIImage(named: "imac.jpg")
        imageView.image = image
    }

    @IBAction func shareImage(_ sender: Any) {
        let image = imageView.image!
        
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        
        controller.excludedActivityTypes = [.postToFacebook, .postToTwitter, .print, .copyToPasteboard, .assignToContact, .saveToCameraRoll];
        
        self.present(controller, animated: true, completion: nil)
        
        
    }
    
}

