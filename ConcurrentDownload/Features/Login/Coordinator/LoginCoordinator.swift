//
//  LoginCoordinator.swift
//  ConcurrentDownload
//
//  Created by Ravi Ranjan on 04/09/22.
//

import Foundation
import UIKit

 
class LoginCoordinator: Coordinator {

    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func configure() {
        let loginScreen = LoginViewController()
        let loginVM = LoginVM(with: self)
        loginScreen.viewModel = loginVM
        self.navigationController.pushViewController(loginScreen, animated: true)
    }
    
    
    func register(){
        let registerCoordinator = RegisterCoordinator(navigationController: self.navigationController)
//        childCoordinators.append(registerCoordinator)
        registerCoordinator.configure()
    }
    
    func dashboard(){
        let dashboardCoordinator = DashboardCoordinator(navigationController: self.navigationController)
        childCoordinators.append(dashboardCoordinator)
        dashboardCoordinator.configure()
    }
    
    
    func forgotPassword(){
        let coordinator = ForgotPasswordCoordinator(navigationController: self.navigationController)
        childCoordinators.append(coordinator)
        coordinator.configure()

    }
}
