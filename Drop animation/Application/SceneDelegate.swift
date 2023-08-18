//
//  SceneDelegate.swift
//  Drop animation
//
//  Created by Andrei Sushkou on 18.08.23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
                window = UIWindow(frame: windowScene.coordinateSpace.bounds)
                window?.windowScene = windowScene
                window?.rootViewController = ViewController()
                window?.makeKeyAndVisible()
    }
}

