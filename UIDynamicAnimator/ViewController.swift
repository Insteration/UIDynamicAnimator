//
//  ViewController.swift
//  UIDynamicAnimator
//
//  Created by Art Karma on 4/22/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let squareView = UIView()
    var animator: UIDynamicAnimator!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let numberOfView = 2
        
        
        squareView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        squareView.backgroundColor = .green
        self.view.addSubview(squareView)
        
        animator = UIDynamicAnimator(referenceView: self.view)
        let gravity = UIGravityBehavior(items: [squareView])
        gravity.angle = -5
//        gravity.magnitude = 0.01
        gravity.gravityDirection = CGVector(dx: -0.1, dy: 0.5)
        animator.addBehavior(gravity)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

