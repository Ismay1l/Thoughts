//
//  IAPManager.swift
//  Thoughts
//
//  Created by Ismayil Ismayilov on 17.08.22.
//

import Foundation
import RevenueCat

final class IAPManager {
    
    static let shared = IAPManager()
    
    private init() {}
    
    func isPremium() -> Bool {
        return false
    }
    
    func subscribe() {}
    
    func restorePurchases() {}
}
