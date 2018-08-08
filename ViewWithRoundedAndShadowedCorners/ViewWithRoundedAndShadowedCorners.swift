//
//  ViewWithRoundedAndShadowedCorners.swift
//  ViewWithRoundedAndShadowedCorners
//
//  Created by Bart van Kuik on 08/08/2018.
//  Copyright © 2018 DutchVirtual. All rights reserved.
//

import UIKit

class ViewWithRoundedAndShadowedCorners: UIView {
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let cornerPath = UIBezierPath(roundedRect: self.bounds,
                                      byRoundingCorners: UIRectCorner(rawValue: self.layer.maskedCorners.rawValue),
                                      cornerRadii: CGSize(width: self.layer.cornerRadius,
                                                          height: self.layer.cornerRadius))
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 10, height: 10)
        self.layer.shadowOpacity = 0.4
        self.layer.shadowPath = cornerPath.cgPath
    }
    
    private func commonInit() {
        self.backgroundColor = .green
        self.layer.cornerRadius = 15
        self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMaxYCorner]
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
