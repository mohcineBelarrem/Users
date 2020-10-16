//
//  UsersListView.swift
//  Users
//
//  Created by Mohcine BELARREM on 16/10/2020.
//

import SwiftUI

struct UsersListView: View {
    var body: some View {
       
        List() {
            Text("User 1")
            Text("User 2")
            Text("User 3")
            Text("User 4")
        }
    }
    
}

struct UsersListView_Previews: PreviewProvider {
    static var previews: some View {
        UsersListView()
    }
}
