//
//  Coordinator.swift
//  ConcurrentDownload
//
//  Created by Ravi Ranjan on 04/09/22.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}

class MainCoordinator : Coordinator {
    
    var childCoordinators = [Coordinator]()
    
    weak var viewModel: ViewModel?
    var navigationController: UINavigationController
    
    init(navigationController:UINavigationController, viewmodel: ViewModel) {
        self.navigationController = navigationController
        self.viewModel = viewmodel
    }
    func start() {
        let spalashScreen = SplashViewController()
        guard let viewModel = viewModel as? SplashVM else {
            return
        }
        viewModel.coordinator = self
        spalashScreen.viewModel = viewModel
        navigationController.pushViewController(spalashScreen, animated: true)
        
    }
    
    func register(){
        let registerScreen = RegisterViewController()
        self.navigationController.pushViewController(registerScreen, animated: true)
    }
    
    func login(){
        let loginScreen = LoginViewController()
        self.navigationController.pushViewController(loginScreen, animated: true)
    }
}
