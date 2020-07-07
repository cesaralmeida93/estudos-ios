//
//  ViewController.swift
//  Auto Layout
//
//  Created by GSW Mobile Team on 07/07/20.
//  Copyright © 2020 GSW Mobile Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redView = UIView()
        redView.backgroundColor = .red
        
//        let blueView = UIView()
//        blueView.backgroundColor = .blue
//
//        let yellowView = UIView()
//        yellowView.backgroundColor = .yellow
        
        view.addSubview(redView)
        
//        redView.preencher(
//            top: view.topAnchor,
//            leading: view.leadingAnchor,
//            trailling: nil,
//            bottom: nil,
//            padding: .init(top: 50, left: 30, bottom: 100, right: 50),
//            size: .init(width: 200, height: 500)
//        )
        
//        redView.preencherSuperView(padding: .init(top: 50, left: 50, bottom: 50, right: 50))
        
        redView.centralizarSuperView(size: .init(width: 200, height: 200))
        
//        view.addSubview(blueView)
        
//        redView.translatesAutoresizingMaskIntoConstraints = false
//        redView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        redView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//        redView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        redView.widthAnchor.constraint(equalToConstant: view.bounds.width / 2).isActive = true
//
//        blueView.translatesAutoresizingMaskIntoConstraints = false
//        blueView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        blueView.leadingAnchor.constraint(equalTo: redView.trailingAnchor).isActive = true
//        blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        blueView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
//        let horizontalStackView = UIStackView(arrangedSubviews: [redView, blueView])
//        horizontalStackView.distribution = .fillEqually
//
//        let stackView: UIStackView = UIStackView(arrangedSubviews: [horizontalStackView, yellowView])
//        stackView.distribution = .fillEqually
//        stackView.axis = .vertical
//
//        view.addSubview(stackView)
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }

}
