//
//  HomeModule.swift
//  VIPER Example
//
//  Created by Jack Smith on 30/09/2020.
//  Copyright © 2020 Jack Smith. All rights reserved.
//
// Module Builder: Responsible for building the VIPER module by using dependency injection for all external services.

import UIKit

class HomeModule {
    func build() -> UIViewController {
        let view = HomeViewController()
        let router = HomeRouter()
        let interactor = HomeInteractor()
        let presenter = HomePresenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        router.viewController = view
        interactor.presenter = presenter

        return view
    }
}
