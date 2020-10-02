// swiftlint:disable:this file_name
//
//  RegisterProtocols.swift
//  VIPER Example
//
//  Created by Jack Smith on 30/09/2020.
//  Copyright © 2020 Jack Smith. All rights reserved.
//
// Protocols: Define interactions between components of the VIPER module.

import Foundation

// MARK: - View
/// Presenter -> ViewController
protocol RegisterViewProtocol: AnyObject {
    var presenter: RegisterPresenterProtocol? { get set }
}

// MARK: - Interactor
/// Presenter -> Interactor
protocol RegisterInteractorInputProtocol: AnyObject {
    var presenter: RegisterInteractorOutputProtocol? { get set }
}

/// Interactor -> Presenter
protocol RegisterInteractorOutputProtocol: AnyObject {
}

// MARK: - Presenter
/// ViewController -> Presenter
protocol RegisterPresenterProtocol: AnyObject, ViewControllerLifeCycle {
    var interactor: RegisterInteractorInputProtocol? { get set }
}

// MARK: Router
/// Navigation
protocol RegisterRouterProtocol: AnyObject, DefaultRouterProtocol {
}
