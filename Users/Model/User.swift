//
//  User.swift
//  Users
//
//  Created by Mohcine BELARREM on 16/10/2020.
//

import Foundation
import RealmSwift


class User: Object, Codable, Identifiable {
    
    @objc dynamic var id = 0 
    @objc dynamic var name = ""
    @objc dynamic var username = ""
    @objc dynamic var email = ""
    @objc dynamic var hasBeenLoaded = false
    
    private enum CodingKeys: String, CodingKey {
        case id, name,username,email
    }
   
    
    static func dummyUser() -> User {
        let user = User()
        user.id = 9999
        user.name = "Hamid El Mardi"
        user.username = "helmardi"
        user.email = "helmardi@caramail.com"
        user.hasBeenLoaded = true
        
        return user
    }
}

