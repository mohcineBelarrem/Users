//
//  Task.swift
//  Users
//
//  Created by Mohcine BELARREM on 16/10/2020.
//

import Foundation
import RealmSwift


class Task: Object, Codable, Identifiable {
    
    @objc dynamic var id = 0
    @objc dynamic var userId = 0
    @objc dynamic var title = ""
    @objc dynamic var completed  = false
    
    
    
    static func dummyTaskList() -> [Task] {
        
        let task1 = Task()
        task1.id = 1
        task1.userId = 1
        task1.title = "Ghsel lma3en"
        task1.completed = false
        
        let task2 = Task()
        task2.id = 2
        task2.userId = 1
        task2.title = "Sben lhwayj"
        task2.completed = true
        
        let task3 = Task()
        task3.id = 3
        task3.userId = 1
        task3.title = "Sayb l'app"
        task3.completed = true
        
        let task4 = Task()
        task4.id = 4
        task4.userId = 1
        task4.title = "jme3 lbit"
        task4.completed = false
        
        let task5 = Task()
        task5.id = 5
        task5.userId = 1
        task5.title = "Walk the Dog"
        task5.completed = true
        
        return [task1,task2,task3,task4,task5]
        
    }
    
}
