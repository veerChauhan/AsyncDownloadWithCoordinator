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
        let loginVM = LoginVM()
        loginScreen.viewModel = loginVM
        self.navigationController.pushViewController(loginScreen, animated: true)
    }
    
    
    
}
