//
//  TTLoginViewController.swift
//  TTLoginView
//
//  Created by Matías Spinelli on 29/11/2018.
//  Copyright © 2018 Matías Spinelli. All rights reserved.
//

import UIKit

protocol TTLoginProtocol {
    func userLoginSuccess()
    func userLoginFailure()
}

class TTLoginViewController: UIViewController {

    @IBOutlet weak var imageLogo: UIImageView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    var delegate : TTLoginProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configureUsernameTextField()
        configurePasswordTextField()
        confirgureLoginButton()
        
        let backButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItem.Style.done, target: self, action: #selector(self.cancelLogin))
        self.navigationItem.leftBarButtonItem = backButton
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: - Private
    private func configureUsernameTextField() {
        self.usernameTextField.autocapitalizationType = .none
        self.usernameTextField.autocorrectionType = .no
        self.usernameTextField.smartDashesType = .no
        self.usernameTextField.smartInsertDeleteType = .no
        self.usernameTextField.smartQuotesType = .no
        self.usernameTextField.keyboardType = .namePhonePad
        self.usernameTextField.keyboardAppearance = .default
        self.usernameTextField.returnKeyType = .default
        
        self.usernameTextField.placeholder = "Username"
//        self.usernameTextField.leftView
        
    }
    
    private func configurePasswordTextField() {
        self.passwordTextField.autocapitalizationType = .none
        self.passwordTextField.autocorrectionType = .no
        self.passwordTextField.smartDashesType = .no
        self.passwordTextField.smartInsertDeleteType = .no
        self.passwordTextField.smartQuotesType = .no
        self.passwordTextField.keyboardType = .namePhonePad
        self.passwordTextField.keyboardAppearance = .default
        self.passwordTextField.returnKeyType = .default
        
        self.passwordTextField.placeholder = "Password"
        //        self.usernameTextField.leftView

    }
    
    private func confirgureLoginButton() {
        self.loginButton.setTitle("LOGIN", for: UIControl.State.normal)
    }
    
    private func processLogin() {
        
        self.dismiss(animated: true) {
            self.delegate?.userLoginSuccess()
        }
        
    }
    
    // MARK: - Actions
    @IBAction func loginPressed(_ sender: Any) {
        self.processLogin()
    }
 
    @objc func cancelLogin() {
        self.dismiss(animated: true) {

        }
    }

}
