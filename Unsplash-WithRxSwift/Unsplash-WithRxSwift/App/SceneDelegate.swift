//
//  SceneDelegate.swift
//  Unsplash-WithRxSwift
//
//  Created by taehy.k on 2021/10/12.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        guard let mainViewController = UIStoryboard(name: "MainStoryboard", bundle: nil)
                .instantiateViewController(withIdentifier: "MainViewController") as? MainViewController else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = UINavigationController(rootViewController: mainViewController)
        window?.makeKeyAndVisible()
    }
}

