//
//  ViewController.swift
//  PraceticeTabBar
//
//  Created by ukBook on 2023/04/29.
//

import UIKit
import SnapKit
import Then


final class ViewController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setTabbar()
        setAttribute()
    }
    
    // MARK: - Tabbar Setting
    func setTabbar() {
        
        let appearanceTabbar = UITabBarAppearance()
        appearanceTabbar.configureWithOpaqueBackground()
        appearanceTabbar.backgroundColor = UIColor.white
        tabBar.standardAppearance = appearanceTabbar
        tabBar.tintColor = .black
        tabBar.backgroundColor = .white
    }
    
    // MARK: - Tabbar 화면이동 및 눌렸을때/눌리지 않았을때 이미지 Set
    func setAttribute() {
        
        // MARK: - UIBar Create NavigtaionController
        viewControllers = [
          createNavController(for: Test1ViewController(), title: NSLocalizedString("홈", comment: ""), image: UIImage(named: "home")!, selectedImage: UIImage(named: "sHome")!),
          createNavController(for: Test2ViewController(), title: NSLocalizedString("북마크", comment: ""), image: UIImage(named: "scrap")!, selectedImage: UIImage(named: "sScrap")!),
          createNavController(for: Test3ViewController(), title: NSLocalizedString("검색", comment: ""), image: UIImage(named: "search")!, selectedImage: UIImage(named: "sSearch")!),
          createNavController(for: Test4ViewController(), title: NSLocalizedString("내정보", comment: ""), image: UIImage(named: "myInfo")!, selectedImage: UIImage(named: "sMyInfo")!)
        ]
    }
    
    // MARK: - Tabbar 화면이동 및 눌렸을때/눌리지 않았을때 이미지 Set
    fileprivate func createNavController(for rootViewController: UIViewController, title: String?, image: UIImage, selectedImage: UIImage) -> UIViewController {
        
        let navController = UINavigationController(rootViewController:  rootViewController)
        navController.navigationBar.isTranslucent = false
        navController.navigationBar.backgroundColor = .white
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.tabBarItem.selectedImage = selectedImage
        navController.interactivePopGestureRecognizer?.delegate = nil // 스와이프 제스처 enable true
        return navController
    }
}

