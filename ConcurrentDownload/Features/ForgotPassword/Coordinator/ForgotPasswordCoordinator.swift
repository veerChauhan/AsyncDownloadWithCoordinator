//
//  ForgotPasswordCoordinator.swift
//  ConcurrentDownload
//
//  Created by Ravi Ranjan on 05/09/22.
//

import Foundation
import UIKit
class ForgotPasswordCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    func configure() {
        let forgotPasswordScreen = ForgotPasswordViewController()
        self.navigationController.pushViewController(forgotPasswordScreen, animated: true)
    }
    
    
}
