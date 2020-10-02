//
//  RegisterInteractor.swift
//  VIPER Example
//
//  Created by Jack Smith on 30/09/2020.
//  Copyright © 2020 Jack Smith. All rights reserved.
//
// Interactor: Responsible for retrieving data from the model layer, it is independent of the user interface.

import Foundation

class RegisterInteractor: RegisterInteractorInputProtocol {
    weak var presenter: RegisterInteractorOutputProtocol?
}
