//
//  LoginModule.swift
//  VIPER Example
//
//  Created by Jack Smith on 30/09/2020.
//  Copyright © 2020 Jack Smith. All rights reserved.
//
// Module Builder: Responsible for building the VIPER module by using dependency injection for all external services.

import UIKit

class LoginModule {
    func build() -> UIViewController {
        let view = LoginViewController()
        let router = LoginRouter()
        let interactor = LoginInteractor()
        let presenter = LoginPresenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        router.viewController = view
        interactor.presenter = presenter

        return view
    }
}
