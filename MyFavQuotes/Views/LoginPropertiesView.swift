//
//  LoginPropertiesView.swift
//  MyFavQuotes
//
//  Created by Custodio Anthony on 17/05/2020.
//  Copyright © 2020 Stod. All rights reserved.
//

import UIKit

@IBDesignable
class LoginViewProperties: UIView {
    @IBInspectable var colorShadow: UIColor = UIColor.clear {
        didSet {
            layer.shadowColor = colorShadow.cgColor
        }
    }
    
    @IBInspectable var radiusShadow: CGFloat = 0 {
        didSet {
            layer.shadowRadius = radiusShadow
        }
    }
    
    @IBInspectable var opacityShadow: CGFloat = 0 {
        didSet {
            layer.shadowOpacity = Float(opacityShadow)
        }
    }
    
    @IBInspectable var offsetShadow: CGFloat = 0 {
        didSet {
            layer.shadowOffset.height = offsetShadow
        }
    }
}
