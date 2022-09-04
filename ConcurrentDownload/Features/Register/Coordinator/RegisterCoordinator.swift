//
//  RegisterCoordinator.swift
//  ConcurrentDownload
//
//  Created by Ravi Ranjan on 05/09/22.
//

import Foundation
import UIKit
class RegisterCoordinator : Coordinator {
    
    var childCoordinators: [Coordinator] = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    
    func configure() {
        let registerScreen = RegisterViewController()
        let viewModel = RegisterVM()
        registerScreen.viewModel = viewModel
        self.navigationController.pushViewController(registerScreen, animated: true)

    }
}
