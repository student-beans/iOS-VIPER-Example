//
//  LoginRouter.swift
//  VIPER Example
//
//  Created by Jack Smith on 30/09/2020.
//  Copyright © 2020 Jack Smith. All rights reserved.
//
// Router: Contains navigation logic for describing which screens are shown in which order.

import UIKit

class LoginRouter {
    // MARK: - LoginRouterProtocol
    
    weak var viewController: UIViewController?
}

// MARK: - LoginRouterProtocol Methods

extension LoginRouter: LoginRouterProtocol {
    func navigateToHome() {
        let homeVC = HomeModule().build()
        viewController?.navigationController?.pushViewController(homeVC, animated: true)
    }
}
