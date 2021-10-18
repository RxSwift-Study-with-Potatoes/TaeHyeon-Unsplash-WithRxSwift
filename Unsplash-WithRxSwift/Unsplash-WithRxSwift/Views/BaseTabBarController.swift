//
//  BaseTabBarController.swift
//  Unsplash-WithRxSwift
//
//  Created by taehy.k on 2021/10/18.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarAttributes()
        setupTabBarItem()
    }
    
    private func setupTabBarAttributes() {
        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = .systemGray
        tabBar.barTintColor = .black
        tabBar.isTranslucent = false
    }
    
    private func setupTabBarItem() {
        let mainVC = UIStoryboard(name: "MainViewController", bundle: nil)
            .instantiateViewController(withIdentifier: "MainViewController")
        
        let mainNavVC = UINavigationController(rootViewController: mainVC)
        let searchNavVC = UINavigationController(rootViewController: SearchViewController())
        let uploadNavVC = UINavigationController(rootViewController: UploadViewController())
        let profileNavVC = UINavigationController(rootViewController: ProfileViewController())
        
        mainNavVC.tabBarItem.selectedImage = Image.tabbarIconImageFill
        mainNavVC.tabBarItem.image = Image.tabbarIconImage
        
        searchNavVC.tabBarItem.selectedImage = Image.tabbarIconSearchFill
        searchNavVC.tabBarItem.image = Image.tabbarIconSearch
        
        uploadNavVC.tabBarItem.selectedImage = Image.tabbarIconPlusFill
        uploadNavVC.tabBarItem.image = Image.tabbarIconPlus
        
        profileNavVC.tabBarItem.selectedImage = Image.tabbarIconProfileFill
        profileNavVC.tabBarItem.image = Image.tabbarIconProfile
        
        viewControllers = [mainNavVC,
                           searchNavVC,
                           uploadNavVC,
                           profileNavVC]
    }
}

