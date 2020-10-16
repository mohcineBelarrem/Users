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


let dummyUser = User(id: 9999, name: "Hamid el Mardi", username: "helmardi", email: "helmardi@caramail.com")
