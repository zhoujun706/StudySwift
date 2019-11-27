//
//  ViewController.swift
//  iOSScrollViewPagingTutorial
//
//  Created by 邹俊 on 2019/1/8.
//  Copyright © 2019 邹俊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    let color = [UIColor.red, UIColor.blue, UIColor.green]
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for index in 0 ..< color.count {
            frame.origin.x = scrollView.frame.size.width * CGFloat(index)
            frame.size = scrollView.frame.size
            
            let subView = UIView(frame: frame)
            subView.backgroundColor = color[index]
            scrollView.addSubview(subView)
        }
        
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width * CGFloat(color.count), height: scrollView.frame.size.height)
    }

}

