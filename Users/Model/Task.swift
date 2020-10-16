//
//  Task.swift
//  Users
//
//  Created by Mohcine BELARREM on 16/10/2020.
//

import Foundation


struct Task: Codable, Identifiable {
    
    let id: Int
    let userId: Int
    let title: String
    let completed : Bool
   
}


let dummyTasksList = [Task(id: 1, userId: 1, title: "Ghsel lma3en", completed: false),
                      Task(id: 2, userId: 1, title: "Task 2", completed: false),
                      Task(id: 3, userId: 1, title: "Task 3", completed: true),
                      Task(id: 4, userId: 1, title: "Task 4", completed: false),
                      Task(id: 5, userId: 1, title: "Task 5", completed: false),
                      Task(id: 6, userId: 1, title: "Task 6", completed: true),
                      Task(id: 7, userId: 1, title: "Task 7", completed: false),
                      Task(id: 8, userId: 1, title: "Task 8", completed: true),
                      Task(id: 9, userId: 1, title: "Task 9", completed: false),
                      Task(id: 10, userId: 1, title: "Task 10", completed: true),
                      Task(id: 11, userId: 1, title: "Task 11", completed: false),
                      Task(id: 12, userId: 1, title: "Task 12", completed: true),
                      Task(id: 13, userId: 1, title: "Task 13", completed: true),
                      Task(id: 14, userId: 1, title: "Task 14", completed: true),
                      Task(id: 15, userId: 1, title: "Task 15", completed: false)]
