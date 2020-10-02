//
//  DefaultRouterProtocol.swift
//  Student Beans
//
//  Created by Julien Claverie on 26/03/2019.
//  Copyright © 2019 The Beans Group. All rights reserved.
//

import UIKit

protocol DefaultRouterProtocol {
    var viewController: UIViewController? { get set }

    func displayAlert(_ title: String?, message: String?, completionHandler: ((UIAlertAction) -> Void)?)
}

extension DefaultRouterProtocol {
    func displayAlert(_ title: String?, message: String?, completionHandler: ((UIAlertAction) -> Void)? = nil) {
        guard viewController?.presentedViewController == nil else { return }

        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: completionHandler))
        viewController?.present(alert, animated: true)
    }
}
