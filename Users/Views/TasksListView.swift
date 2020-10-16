//
//  TasksListView.swift
//  Users
//
//  Created by Mohcine BELARREM on 16/10/2020.
//

import SwiftUI

struct TasksListView: View {
    
    var user : User
    
    var body: some View {
        Text("Displaying Tasks for \(user.name)")
    }
}

struct TasksListView_Previews: PreviewProvider {
    static var previews: some View {
        TasksListView(user: dummyUser)
    }
}
