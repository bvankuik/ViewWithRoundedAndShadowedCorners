//
//  CustomView.swift
//  CustomViewWithShadow
//
//  Created by Bart van Kuik on 08/08/2018.
//  Copyright © 2018 DutchVirtual. All rights reserved.
//

import UIKit

class CustomView: UIView {
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let shadowPath = UIBezierPath(rect: self.bounds)
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 5, height: 5)
        self.layer.shadowOpacity = 0.2
        self.layer.shadowPath = shadowPath.cgPath
    }
    
    private func commonInit() {
        self.backgroundColor = .green
        self.clipsToBounds = true
        self.layer.cornerRadius = 30
        self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
