//
//  Functions.swift
//  Thoughts
//
//  Created by Ismayil Ismayilov on 16.10.22.
//

import Foundation
import UIKit

func createLabel(size: CGFloat, weight: UIFont.Weight, alignment: NSTextAlignment, numberOfLInes: Int, text: String, textColor: UIColor) -> UILabel {
    let label = UILabel()
    label.font = .systemFont(ofSize: size, weight: weight)
    label.textAlignment = alignment
    label.numberOfLines = numberOfLInes
    label.text = text
    label.textColor = textColor
    return label
}

func hexStringToUIColor (hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
    
    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }
    
    if ((cString.count) != 6) {
        return UIColor.gray
    }
    
    var rgbValue:UInt64 = 0
    Scanner(string: cString).scanHexInt64(&rgbValue)
    
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}

func getStackView() -> UIStackView {
    let view = UIStackView()
    view.distribution = .equalSpacing
    view.axis = .vertical
    view.alignment = .leading
    view.isBaselineRelativeArrangement = false
    view.spacing = 12
    return view
}
