//
//  UTabbarController.swift
//  U17
//
//  Created by 邹俊 on 2019/11/28.
//  Copyright © 2019 邹俊. All rights reserved.
//

import UIKit

class UTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tabBar.isTranslucent = false
        configVC()
    }
    
    
    
    func configVC() -> Void {
        let homeViewController = HomeViewController()
        let homeNav = UINavigationController(rootViewController: homeViewController)
        
        configTabbarItem(title: "首页", viewController: homeViewController, image: UIImage(named: "tab_home"), selectImage: UIImage(named: "tab_home_S"))
        
        let categoryViewController = CategoryViewController()
        let categoryNav = UINavigationController(rootViewController: categoryViewController)
        
        configTabbarItem(title: "分类", viewController: categoryViewController, image: UIImage(named: "tab_class"), selectImage: UIImage(named: "tab_class_S"))
        
        let bookcaseViewController = BookcaseViewController()
        let bookcaseNav = UINavigationController(rootViewController: bookcaseViewController)
        
        configTabbarItem(title: "书架", viewController: bookcaseViewController, image: UIImage(named: "tab_book"), selectImage: UIImage(named: "tab_book_S"))
        
        let mineViewController = MineViewController()
        let mineNav = UINavigationController(rootViewController: mineViewController)
        
        configTabbarItem(title: "我的", viewController: mineViewController, image: UIImage(named: "tab_mine"), selectImage: UIImage(named: "tab_mine_S"))
        
        setViewControllers([homeNav, categoryNav, bookcaseNav, mineNav], animated: true)
    }
    
    func configTabbarItem(title:String, viewController:UIViewController, image:UIImage?, selectImage: UIImage?) -> Void {
        viewController.title = title
        viewController.tabBarItem = UITabBarItem(title: nil, image: image?.withRenderingMode(.alwaysOriginal), selectedImage: selectImage?.withRenderingMode(.alwaysOriginal))
        viewController.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
