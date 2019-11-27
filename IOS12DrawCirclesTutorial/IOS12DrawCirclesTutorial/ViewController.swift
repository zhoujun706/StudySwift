//
//  ViewController.swift
//  IOS12DrawCirclesTutorial
//
//  Created by 邹俊 on 2019/11/12.
//  Copyright © 2019 邹俊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .lightGray
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let circleCenter = touch.location(in: view)
            
            let circleWidth = CGFloat(25 + arc4random() % 50)
            let circleHeight = circleWidth
            
            let circleView = CircleView(frame: CGRect(x: circleCenter.x - circleWidth / 2, y: circleCenter.y - circleHeight / 2, width: circleWidth, height: circleHeight))
            view.addSubview(circleView)
            
            
            
        }
        
    }


}

