//
//  DataBaseManager.swift
//  Thoughts
//
//  Created by Ismayil Ismayilov on 17.08.22.
//

import Foundation
import FirebaseFirestore

final class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    private let database = Firestore.firestore()
    
    private init() {}
    
    public func insert(
        blogPost: BlogPost,
        user: User,
        completion: @escaping (Bool) -> Void)
    {
        
    }
    
    public func getAllPosts(
        completion: @escaping ([BlogPost]) -> Void)
    {
        
    }
    
    public func getPosts(
        user: User,
        completion: @escaping ([BlogPost]) -> Void)
    {
        
    }
    
    public func insertUser(
        user: User,
        completion: @escaping (Bool) -> Void)
    {
        
    }
}
