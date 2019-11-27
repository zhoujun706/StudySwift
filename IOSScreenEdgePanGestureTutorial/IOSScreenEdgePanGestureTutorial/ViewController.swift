//
//  ViewController.swift
//  IOSScreenEdgePanGestureTutorial
//
//  Created by 邹俊 on 2019/1/8.
//  Copyright © 2019 邹俊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    
    var screenEdgeRecognizer: UIScreenEdgePanGestureRecognizer!
    var currentRadius: CGFloat = 0.0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        screenEdgeRecognizer = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(rotateBall))
        screenEdgeRecognizer.edges = .left
        
        view.addGestureRecognizer(screenEdgeRecognizer)
        
        
        
    }


    
    @objc func rotateBall(sender: UIScreenEdgePanGestureRecognizer) {
        if sender.state == .ended {
            if currentRadius == 360.0 {
                currentRadius = 0.0
            }
            
            UIView.animate(withDuration: 1.0) {
                self.currentRadius += 90.0
                self.imageView.transform = CGAffineTransform(rotationAngle: self.currentRadius * .pi / 180.0)
            }
        }
        
    }
    
}

