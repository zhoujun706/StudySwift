//
//  ViewController.swift
//  iOSCollisionDetectionTutorial
//
//  Created by 邹俊 on 2019/2/26.
//  Copyright © 2019 邹俊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var squareViews: [UIView] = []
    var animator: UIDynamicAnimator!
    var colors: [UIColor] = []
    var centerPoint: [CGPoint] = []
    var sizeSquare: CGSize!
    
    
    var leftBoundaryHeight: CGFloat!
    var middleBoundaryHeight: CGFloat!
    var rightBoundaryHeight: CGFloat!
    var leftBoundarywidth: CGFloat!
    var middleBoundarywidth: CGFloat!
    var leftSquareCenterPointX: CGFloat!
    var middleSquareCenterPointX: CGFloat!
    var rightSquareCenterPointX: CGFloat!
    var squareCenterPointY: CGFloat!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setBoundaryValues()
        
        colors = [.red, .blue, .green, .purple, .gray]
        
        let leftCenterPoint = CGPoint(x: leftSquareCenterPointX, y: squareCenterPointY)
        let middleCenterPoint = CGPoint(x: middleSquareCenterPointX, y: squareCenterPointY)
        let rightCenterPoint = CGPoint(x: rightSquareCenterPointX, y: squareCenterPointY)
        
        centerPoint = [leftCenterPoint, middleCenterPoint, rightCenterPoint]
        
        sizeSquare = CGSize(width: 50, height: 50)
        
    }
    
    
    func setBoundaryValues() {
        leftBoundaryHeight = view.bounds.size.height - 100
        middleBoundaryHeight = view.bounds.size.height - 150
        rightBoundaryHeight = view.bounds.size.height - 100
        leftBoundarywidth = view.bounds.size.width / 3
        middleBoundarywidth = view.bounds.size.width * 0.67
        leftSquareCenterPointX = view.bounds.size.width / 6
        middleSquareCenterPointX = view.bounds.size.width / 2
        rightSquareCenterPointX = view.bounds.size.width * 0.84
        squareCenterPointY = view.bounds.size.height - 400
    }
    

    @IBAction func releaseSquare(_ sender: Any) {
        let newView = UIView(frame: CGRect(x: 0, y: 0, width: sizeSquare.width, height: sizeSquare.height))
        let randomColorIndex = Int(arc4random() % 5)
        newView.backgroundColor = colors[randomColorIndex]
        
        let randomCenterPoint = Int(arc4random() % 3)
        newView.center = centerPoint[randomCenterPoint]
        
        squareViews.append(newView)
        view.addSubview(newView)
        
        
        animator = UIDynamicAnimator(referenceView: view)
        
        let gravity = UIGravityBehavior(items: squareViews)
        animator.addBehavior(gravity)
        
        let collision = UICollisionBehavior(items: squareViews)
        collision.addBoundary(withIdentifier: "leftBoundary" as NSCopying, from: CGPoint(x: 0, y: leftBoundaryHeight), to: CGPoint(x: leftBoundarywidth, y: leftBoundaryHeight))
        collision.addBoundary(withIdentifier: "middleBoundary" as NSCopying, from: CGPoint(x: view.bounds.size.width / 3, y: middleBoundaryHeight), to: CGPoint(x: middleBoundarywidth, y: middleBoundaryHeight))
        collision.addBoundary(withIdentifier: "rightBoundary" as NSCopying, from: CGPoint(x: middleBoundarywidth, y: rightBoundaryHeight), to: CGPoint(x: view.bounds.size.width, y: rightBoundaryHeight))
        
        collision.collisionMode = .everything
        animator.addBehavior(collision)
        
        
    }
    
}

