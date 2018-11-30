//
//  TTLoginController.swift
//  TTLoginView
//
//  Created by Matías Spinelli on 29/11/2018.
//  Copyright © 2018 Matías Spinelli. All rights reserved.
//

import UIKit

class TTLoginController: NSObject {

    static let sharedInstance = TTLoginController()
    
    var loginViewController : TTLoginViewController?
    
    private override init() {
        loginViewController = TTLoginViewController(nibName: "TTLoginViewController", bundle: nil)
    }

    func showLoginView(in viewController : UIViewController) {
        
        loginViewController?.delegate = viewController as? TTLoginProtocol
        
        let navigationViewController: UINavigationController = UINavigationController(rootViewController: loginViewController ?? UIViewController())
        viewController.present(navigationViewController, animated: true, completion: nil)
    }
    
    func configureBackgroundColor(color : UIColor) {
        loginViewController?.view.backgroundColor = color
    }
    
}
