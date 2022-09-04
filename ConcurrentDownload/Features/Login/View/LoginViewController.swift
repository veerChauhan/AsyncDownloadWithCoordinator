//
//  LoginViewController.swift
//  ConcurrentDownload
//
//  Created by Ravi Ranjan on 04/09/22.
//

import UIKit

class LoginViewController: UIViewController {

    var viewModel : LoginVM?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onClickRegister(_ sender: CornerButton) {
        viewModel?.register()
        
    }
    @IBAction func onClickForgotPassword(_ sender: CornerButton) {
        viewModel?.forgotPassword()
    }
    
    @IBAction func onClickLogin(_ sender: CornerButton) {
        viewModel?.login(with: "Ravi", password: "Ravi@12345")
    }
}
