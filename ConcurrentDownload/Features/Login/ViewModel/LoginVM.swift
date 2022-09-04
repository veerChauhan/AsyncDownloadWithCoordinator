//
//  LoginVM.swift
//  ConcurrentDownload
//
//  Created by Ravi Ranjan on 04/09/22.
//

import Foundation

protocol Login {
    
    func login(with email: String, password: String)
    func register()
    func forgotPassword()
    
}
class LoginVM: Login {
    
    var coordinator: LoginCoordinator?
    
    func login(with email: String, password: String) {
        
        coordinator.
        print(email, password)
    }
    
    func register() {
        print("Clicked on Register")
    }
    
    func forgotPassword() {
        print("Clicked on Forgot Password")
    }
    
}
