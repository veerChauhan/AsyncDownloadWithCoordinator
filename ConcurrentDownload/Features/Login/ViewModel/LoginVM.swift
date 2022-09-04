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
    init(with coordinator: LoginCoordinator){
        self.coordinator = coordinator
    }
    
    func login(with email: String, password: String) {
        
        print(email, password)
        coordinator?.dashboard()
    }
    
    func register() {
        print("Clicked on Register")
        coordinator?.register()
    }
    
    func forgotPassword() {
        print("Clicked on Forgot Password")
        coordinator?.forgotPassword()
    }
    
}
