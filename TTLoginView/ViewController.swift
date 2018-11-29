//
//  ViewController.swift
//  TTLoginView
//
//  Created by Matías Spinelli on 29/11/2018.
//  Copyright © 2018 Matías Spinelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController, TTLoginProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        TTLoginController.sharedInstance.configureBackgroundColor(color: UIColor.blue)
        TTLoginController.sharedInstance.showLoginView(in: self)
    }

    // MARK: - TTLoginProtocol
    func userLoginSuccess() {
        print("success")
    }
    
    func userLoginFailure() {
        print("failure")
    }
}

