//
//  SplashVM.swift
//  ConcurrentDownload
//
//  Created by Ravi Ranjan on 04/09/22.
//

import Foundation


protocol SplashScreen: ViewModel {
    func login()
    func registration()
}

class SplashVM: SplashScreen {
    
    weak var coordinator: MainCoordinator?

    init(){}
    func login() {
        print("Clicked on Login")
        coordinator?.login()
    }
    
    func registration() {
        print("Clicked on Registration")
        coordinator?.register()
    }
}
