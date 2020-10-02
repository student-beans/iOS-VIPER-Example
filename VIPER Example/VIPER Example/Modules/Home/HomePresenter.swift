//
//  HomePresenter.swift
//  VIPER Example
//
//  Created by Jack Smith on 30/09/2020.
//  Copyright © 2020 Jack Smith. All rights reserved.
//
// Presenter: Contains view logic for preparing content for display (as received from the Interactor) and for reacting
// to user inputs (by requesting new data from the Interactor).

import Foundation

class HomePresenter {
    // MARK: - HomePresenterProtocol
    
    var interactor: HomeInteractorInputProtocol?
    
    // MARK: - Properties
    
    weak private var view: HomeViewProtocol?
    private let router: HomeRouterProtocol
    
    // MARK: - Lifecycle

    init(interface: HomeViewProtocol, interactor: HomeInteractorInputProtocol?, router: HomeRouterProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }
}

// MARK: - HomePresenterProtocol Methods

extension HomePresenter: HomePresenterProtocol {
    func viewDidLoad() {
        view?.configure()
        view?.layout()
    }
}

// MARK: - HomeInteractorOutputProtocol Methods

extension HomePresenter: HomeInteractorOutputProtocol {
}
