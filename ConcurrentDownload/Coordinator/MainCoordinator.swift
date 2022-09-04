//
//  MainCoordinator.swift
//  ConcurrentDownload
//
//  Created by Ravi Ranjan on 04/09/22.
//

import Foundation
import UIKit
class MainCoordinator : Coordinator {
    
    var childCoordinators = [Coordinator]()
    
    weak var viewModel: ViewModel?
    
    var navigationController: UINavigationController
    
    init(navigationController:UINavigationController) {
        self.navigationController = navigationController
    }
    
    func configure() {
        let coordinaor = SplashCoordinator(navigationController: self.navigationController)
        childCoordinators.append(coordinaor)
        coordinaor.configure()
    }
}
