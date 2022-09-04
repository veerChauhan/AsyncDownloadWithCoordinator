//
//  SplashCoordinator.swift
//  ConcurrentDownload
//
//  Created by Ravi Ranjan on 05/09/22.
//

import Foundation
import UIKit

class SplashCoordinator :Coordinator {
    
    
    var childCoordinators: [Coordinator] = [Coordinator]()
    
    var navigationController: UINavigationController
    
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func configure() {
        let spalashScreen = SplashViewController()
        let viewModel = SplashVM(with: self)
//        viewModel.coordinator = self
        spalashScreen.viewModel = viewModel
        navigationController.pushViewController(spalashScreen, animated: true)
    }
    
    func register(){
        let registerCoordinator = RegisterCoordinator(navigationController: self.navigationController)
        registerCoordinator.configure()
    }
    
    func login(){
        let loginCoordinator = LoginCoordinator(navigationController: self.navigationController)
        loginCoordinator.configure()
    }
    
}
