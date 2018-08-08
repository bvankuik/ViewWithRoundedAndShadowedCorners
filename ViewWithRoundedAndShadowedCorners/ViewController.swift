//
//  ViewController.swift
//  ViewWithRoundedAndShadowedCorners
//
//  Created by Bart van Kuik on 08/08/2018.
//  Copyright © 2018 DutchVirtual. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        let customView = ViewWithRoundedAndShadowedCorners()
        customView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(customView)
        
        let constraints = [
            customView.widthAnchor.constraint(equalToConstant: 250),
            customView.heightAnchor.constraint(equalToConstant: 100),
            customView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            customView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ]
        self.view.addConstraints(constraints)
    }
}
