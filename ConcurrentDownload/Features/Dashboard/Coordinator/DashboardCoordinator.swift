//
//  DashboardCoordinator.swift
//  ConcurrentDownload
//
//  Created by Ravi Ranjan on 05/09/22.
//

import Foundation
import UIKit

class DashboardCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func configure() {
        let dashboardScreen = DashboardViewController()
        let viewModel = DashboardVM()
        dashboardScreen.viewmodel = viewModel
        self.navigationController.pushViewController(dashboardScreen, animated: true)
    }
    
}
