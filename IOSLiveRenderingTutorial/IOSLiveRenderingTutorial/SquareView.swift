//
//  SquareView.swift
//  IOSLiveRenderingTutorial
//
//  Created by 邹俊 on 2019/1/8.
//  Copyright © 2019 邹俊. All rights reserved.
//

import UIKit

@IBDesignable


class SquareView: UIView {

    @IBInspectable var borderColor: UIColor = UIColor.blue {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        
        if let context = UIGraphicsGetCurrentContext() {
            
            context.setLineWidth(10.0)
            borderColor.set()
            
            context.addRect(rect)
            
            context.strokePath()
            
        }
        
    }
    

}
