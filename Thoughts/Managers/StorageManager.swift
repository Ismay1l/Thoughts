//
//  StorageManager.swift
//  Thoughts
//
//  Created by Ismayil Ismayilov on 17.08.22.
//

import Foundation
import FirebaseStorage
import UIKit

final class StorageManager {
    
    static let shared = StorageManager()
    
    private let container = Storage.storage().reference()
    
    private init() {}
    
    public func uploadUserProfilePicture(
        email: String,
        image: UIImage?,
        completion: @escaping (Bool) -> Void)
    {
        
    }
    
    public func downloadURLForProfilePicture(
        user: User,
        completion: @escaping (URL?) -> Void)
    {
        
    }
    
    public func uploadPostHeaderPicture(
        blogPost: BlogPost,
        image: UIImage?,
        completion: @escaping (Bool) -> Void)
    {
        
    }
    
    public func downloadURLForPostHeaderPicture(
        blogPost: BlogPost,
        completion: @escaping (URL?) -> Void)
    {
        
    }
}
