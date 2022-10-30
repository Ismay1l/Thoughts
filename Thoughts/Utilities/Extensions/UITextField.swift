//
//  UITextField.swift
//  Thoughts
//
//  Created by Ismayil Ismayilov on 16.10.22.
//

import Foundation
import UIKit

class TextField: UITextField {
    let padding = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 5)
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: UIEdgeInsets(top: 0, left: self.frame.size.width - 45, bottom: 0, right: 0))
    }
    
    required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
       }

       required override init(frame: CGRect) {
           super.init(frame: frame)
       }
}
