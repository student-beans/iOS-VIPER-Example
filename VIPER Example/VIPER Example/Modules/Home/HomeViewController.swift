//
//  HomeViewController.swift
//  VIPER Example
//
//  Created by Jack Smith on 30/09/2020.
//  Copyright © 2020 Jack Smith. All rights reserved.
//
// View: Displays what the Presenter tells it to display and relays user input back to the Presenter.

import UIKit

class HomeViewController: UIViewController {
    // MARK: - UI Elements
    
    lazy var homeLabel: UILabel = {
        let homeLabel = UILabel()
        homeLabel.font = .boldSystemFont(ofSize: 20)
        homeLabel.text = "Home"
        homeLabel.translatesAutoresizingMaskIntoConstraints = false
        return homeLabel
    }()
    
    // MARK: - LoginViewProtocol
    
    var presenter: HomePresenterProtocol?
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
}

extension HomeViewController: HomeViewProtocol {
    func configure() {
        view.backgroundColor = .white
    }
    
    func layout() {
        view.addSubview(homeLabel)
        homeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        homeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
