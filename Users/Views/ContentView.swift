//
//  ContentView.swift
//  Users
//
//  Created by Mohcine BELARREM on 16/10/2020.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var appModel = AppModel()
    
    var body: some View {
        NavigationView {
            
            VStack() {
                
                NavigationLink(
                    destination: TasksListView(user: appModel.selectedUser),
                    isActive: $appModel.isTaskListViewShown,
                    label: {EmptyView()})
                
                UsersListView(users: [User](), appModel: self.appModel)
                .navigationBarTitle("Users")
            }
            
            
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
