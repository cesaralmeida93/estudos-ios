//
//  CombineViewController.swift
//  Tinder
//
//  Created by GSW Mobile Team on 08/07/20.
//  Copyright © 2020 GSW Mobile Team. All rights reserved.
//

import UIKit

class CombineViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.systemGroupedBackground
        
        self.adicionarCards()
    }
}

extension CombineViewController {
    func adicionarCards() {
        
        for item in 1...3 {
        
            let redView = UIView()
            redView.backgroundColor = item == 2 ? .blue : .red
            redView.frame = CGRect(x: 0, y: 0, width: 200, height: 300)
            
            redView.center = view.center
            
            let gesture = UIPanGestureRecognizer()
            gesture.addTarget(self, action: #selector(handlerCard))
            
            redView.addGestureRecognizer(gesture)
            
            view.addSubview(redView)
        }
    }
}

extension CombineViewController {
    
    @objc func handlerCard(_ gesture: UIPanGestureRecognizer) {
        if let card = gesture.view {
            let point = gesture.translation(in: view)
            
            card.center = CGPoint(x: view.center.x + point.x, y: view.center.y + point.y)
            
            let rotationAngle = point.x / view.bounds.width * 0.4
            
            card.transform = CGAffineTransform(rotationAngle: rotationAngle)
            
            if gesture.state == .ended {
                
                UIView.animate(withDuration: 0.2) {
                    card.center = self.view.center
                    card.transform = .identity
                }
            }
        }
    }
}
