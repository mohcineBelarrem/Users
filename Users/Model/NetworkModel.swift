//
//  NetworkModel.swift
//  Users
//
//  Created by Mohcine BELARREM on 16/10/2020.
//

import Foundation


struct NetworkModel {
    static let scheme = "https"
    static let baseHost = "jsonplaceholder.typicode.com"
    static let usersPath = "/users"
    static let tasksPath = "/todos"
    
    static func tasksQueryItem(userId : String) -> URLQueryItem {
        return URLQueryItem(name: "userId", value: userId)
    }
    
}
