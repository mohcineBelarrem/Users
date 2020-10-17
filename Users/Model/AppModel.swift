//
//  AppModel.swift
//  Users
//
//  Created by Mohcine BELARREM on 16/10/2020.
//

import Foundation
import RealmSwift



class AppModel : ObservableObject {
    
    @Published var isTaskListViewShown = false
    
    @Published var selectedUser = User.dummyUser()
    
    var realm : Realm!
    
    func openRealm() {
        do {
            
            realm = try Realm()
            
        }
        catch {
            print("We can't open a new Realm #teslim 🐐 👿")
        }
    }
    
    func saveObject(object : Object) {
        do {
            try realm.write{
                realm.add(object)
            }
        }
        catch {
            print("Ljwad didn't let us use the realm \(error.localizedDescription)")
        }
    }
    
    func getUsers() -> [User] {
        
        var users = [User]()
        
        let objects =  realm.objects(User.self)
        
        for object in objects {
            
            users.append(object)
        }
        
        return users
    }
}
