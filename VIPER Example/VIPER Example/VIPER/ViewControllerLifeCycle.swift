//
//  ViewControllerLifeCycle.swift
//  Student Beans
//
//  Created by Julien Claverie on 26/03/2019.
//  Copyright © 2019 The Beans Group. All rights reserved.
//

import Foundation

protocol ViewControllerLifeCycle {
    func viewDidLoad()
    func viewDidAppear()
    func viewDidDisappear()
    func viewWillAppear()
    func viewWillDisappear()
}

extension ViewControllerLifeCycle {
    func viewDidLoad() { }
    func viewDidAppear() { }
    func viewDidDisappear() { }
    func viewWillAppear() { }
    func viewWillDisappear() { }
}
