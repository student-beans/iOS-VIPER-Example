//
//  MockLoginRouter.swift
//  VIPER ExampleTests
//
//  Created by Jack Smith on 01/10/2020.
//  Copyright © 2020 Jack Smith. All rights reserved.
//

@testable import VIPER_Example
import UIKit

class MockLoginRouter: LoginRouterProtocol {
    // MARK: - LoginRouterProtocol
    
    var viewController: UIViewController?
    
    // MARK: - Properties
    
    var navigateToHomeCalled = false
    var displayAlertCalled = false
    
    // MARK: - LoginRouterProtocol Methods
    
    func navigateToHome() {
        navigateToHomeCalled = true
    }
    
    func displayAlert(_ title: String?, message: String?, completionHandler: ((UIAlertAction) -> Void)? = nil) {
        displayAlertCalled = true
    }
}
