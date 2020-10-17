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
        
        realm.objects(User.self).forEach({ user in
            users.append(user)
        })
        
        return users
    }
   
    
    func getTasks(userId : String) -> [Task] {
        
        var tasks = [Task]()
        
        realm.objects(Task.self).filter("userId == \(userId)").forEach({task in
            tasks.append(task)
        })
        
        return tasks
    }
    
}
