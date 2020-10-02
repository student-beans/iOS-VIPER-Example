//
//  LoginInteractorTests.swift
//  VIPER ExampleTests
//
//  Created by Jack Smith on 01/10/2020.
//  Copyright © 2020 Jack Smith. All rights reserved.
//

@testable import VIPER_Example
import XCTest

class LoginInteractorTests: XCTestCase {
    var interactor: LoginInteractor!
    var presenter: MockLoginPresenter!

    override func setUp() {
        interactor = LoginInteractor()
        presenter = MockLoginPresenter()
        interactor.presenter = presenter
    }
    
    // MARK: - Tests
    
    func testThatPerformLogInRequestCallsPresenterDidLogInSuccessfullyOnSuccess() {
        interactor.username = "Valid Username"
        interactor.password = "Valid Password"
        interactor.performLogInRequest()

        XCTAssertTrue(presenter.didLogInSuccessfullyCalled)
    }
    
    func testThatPerformLogInRequestCallsPresenterDidFailToLogInOnFailure() {
        interactor.performLogInRequest()

        XCTAssertTrue(presenter.didFailToLogInCalled)
    }
}
