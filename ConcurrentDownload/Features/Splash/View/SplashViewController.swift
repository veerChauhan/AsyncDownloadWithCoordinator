//
//  SplashViewController.swift
//  ConcurrentDownload
//
//  Created by Ravi Ranjan on 03/09/22.
//

import UIKit

class SplashViewController: UIViewController {

    var viewModel: SplashScreen?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onClickLoginButton(_ sender: CornerButton) {
        
        viewModel?.login()
    }
    @IBAction func onClickRegistration(_ sender: CornerButton) {
        viewModel?.registration()
    }
}
