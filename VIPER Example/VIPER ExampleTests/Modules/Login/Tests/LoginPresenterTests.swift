//
//  LoginPresenterTests.swift
//  VIPER ExampleTests
//
//  Created by Jack Smith on 01/10/2020.
//  Copyright © 2020 Jack Smith. All rights reserved.
//

@testable import VIPER_Example
import XCTest

class LoginPresenterTests: XCTestCase {
    var presenter: LoginPresenter!
    var viewController: MockLoginViewController!
    var interactor: MockLoginInteractor!
    var router: MockLoginRouter!

    override func setUp() {
        viewController = MockLoginViewController()
        interactor = MockLoginInteractor()
        router = MockLoginRouter()
        presenter = LoginPresenter(interface: viewController, interactor: interactor, router: router)
    }
    
    // MARK: - Tests
    
    func testThatUsernameDidChangeUpdatesInteractorUsername() {
        presenter.usernameDidChange("Test")

        XCTAssertTrue(interactor.username == "Test")
    }
    
    func testThatPassworddidChangeUpdatesInteractorPassword() {
        presenter.passwordDidChange("Test")

        XCTAssertTrue(interactor.password == "Test")
    }
    
    func testThatLogInTappedCallsInteractorPerformLogInRequest() {
        presenter.logInTapped()
        
        XCTAssertTrue(interactor.performLogInRequestCalled)
    }
    
    func testThatDidLogInSuccessfullyCallsRouterNavigateToHomeCalled() {
        presenter.didLogInSuccessfully()
        
        XCTAssertTrue(router.navigateToHomeCalled)
    }
    
    func testThatDidFailToLogInCallsRouterDisplayAlert() {
        presenter.didFailToLogIn()
        
        XCTAssertTrue(router.displayAlertCalled)
    }
}
