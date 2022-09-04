//
//  Coordinator.swift
//  ConcurrentDownload
//
//  Created by Ravi Ranjan on 04/09/22.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func configure()
}

