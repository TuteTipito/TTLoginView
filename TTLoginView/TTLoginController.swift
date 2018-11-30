//
//  TTLoginController.swift
//  TTLoginView
//
//  Created by Matías Spinelli on 29/11/2018.
//  Copyright © 2018 Matías Spinelli. All rights reserved.
//

import UIKit

open class TTLoginController: NSObject {

    public static let sharedInstance = TTLoginController()
    
    var loginViewController : TTLoginViewController?
    
    private override init() {
        let bundle = Bundle(for: TTLoginViewController.self)
        loginViewController = TTLoginViewController(nibName: "TTLoginViewController", bundle: bundle)
    }

    open func showLoginView(in viewController : UIViewController) {
        
        loginViewController?.delegate = viewController as? TTLoginProtocol
        
        let navigationViewController: UINavigationController = UINavigationController(rootViewController: loginViewController ?? UIViewController())
        viewController.present(navigationViewController, animated: true, completion: nil)
    }
    
    open func configureBackgroundColor(color : UIColor) {
        loginViewController?.view.backgroundColor = color
    }
    
}
