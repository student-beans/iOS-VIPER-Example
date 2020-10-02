//
//  RegisterModule.swift
//  VIPER Example
//
//  Created by Jack Smith on 30/09/2020.
//  Copyright © 2020 Jack Smith. All rights reserved.
//
// Module Builder: Responsible for building the VIPER module by using dependency injection for all external services.

import UIKit

class RegisterModule {
    func build() -> UIViewController {
        let view = RegisterViewController()
        let router = RegisterRouter()
        let interactor = RegisterInteractor()
        let presenter = RegisterPresenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        router.viewController = view
        interactor.presenter = presenter

        return view
    }
}
