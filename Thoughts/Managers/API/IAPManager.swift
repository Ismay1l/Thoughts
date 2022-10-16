//
//  APIManager.swift
//  Thoughts
//
//  Created by Ismayil Ismayilov on 17.08.22.
//

import Foundation

final class IAPManager {
    
    static let shared = IAPManager()
    private init() {}
    
    //MARK: - Checking premium user
    func isPremium() -> Bool {
        return false
    }
    
    //MARK: - Subscribe
    func subscribe() {}
    
    //MARK: - Restore Purchases
    func restorePurchases() {}
}
