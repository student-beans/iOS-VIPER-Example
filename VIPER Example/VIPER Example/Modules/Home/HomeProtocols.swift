// swiftlint:disable:this file_name
//
//  HomeProtocols.swift
//  VIPER Example
//
//  Created by Jack Smith on 30/09/2020.
//  Copyright © 2020 Jack Smith. All rights reserved.
//
// Protocols: Define interactions between components of the VIPER module.

import Foundation

// MARK: - View
/// Presenter -> ViewController
protocol HomeViewProtocol: AnyObject {
    var presenter: HomePresenterProtocol? { get set }
    
    func configure()
    func layout()
}

// MARK: - Interactor
/// Presenter -> Interactor
protocol HomeInteractorInputProtocol: AnyObject {
    var presenter: HomeInteractorOutputProtocol? { get set }
}

/// Interactor -> Presenter
protocol HomeInteractorOutputProtocol: AnyObject {
}

// MARK: - Presenter
/// ViewController -> Presenter
protocol HomePresenterProtocol: AnyObject, ViewControllerLifeCycle {
    var interactor: HomeInteractorInputProtocol? { get set }
}

// MARK: Router
/// Navigation
protocol HomeRouterProtocol: AnyObject, DefaultRouterProtocol {
}
