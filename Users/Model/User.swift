//
//  User.swift
//  Users
//
//  Created by Mohcine BELARREM on 16/10/2020.
//

import Foundation



struct User: Codable, Identifiable {
    
    let id: Int
    let name: String
    let username: String
    let email : String
   
}
