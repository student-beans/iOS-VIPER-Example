//
//  RegisterPresenter.swift
//  VIPER Example
//
//  Created by Jack Smith on 30/09/2020.
//  Copyright © 2020 Jack Smith. All rights reserved.
//
// Presenter: Contains view logic for preparing content for display (as received from the Interactor) and for reacting
// to user inputs (by requesting new data from the Interactor).

import Foundation

class RegisterPresenter: RegisterPresenterProtocol {
    weak private var view: RegisterViewProtocol?
    var interactor: RegisterInteractorInputProtocol?
    private let router: RegisterRouterProtocol

    init(interface: RegisterViewProtocol, interactor: RegisterInteractorInputProtocol?, router: RegisterRouterProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }
}

extension RegisterPresenter: RegisterInteractorOutputProtocol {
}
