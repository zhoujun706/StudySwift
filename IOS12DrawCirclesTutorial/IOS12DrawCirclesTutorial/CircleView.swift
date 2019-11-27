//
//  CircleView.swift
//  IOS12DrawCirclesTutorial
//
//  Created by 邹俊 on 2019/11/12.
//  Copyright © 2019 邹俊. All rights reserved.
//

import UIKit

class CircleView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            
            context.setLineWidth(5.0)
            UIColor.red.set()
            
            let center = CGPoint(x: frame.width / 2, y: frame.height / 2)
            let radius = (frame.size.width - 10) / 2
            
            context.addArc(center: center, radius: radius, startAngle: 0.0, endAngle: .pi * 2, clockwise: true)
            context.strokePath()
            
            
            
        }
    }
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }

}
