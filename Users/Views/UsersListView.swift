//
//  UsersListView.swift
//  Users
//
//  Created by Mohcine BELARREM on 16/10/2020.
//

import SwiftUI

struct UsersListView: View {
    
    //@State var finishedLoading = true
    
    //@State var noData = false
    
    @State var users : [User]
    
    var body: some View {
        
        List() {
            
            ForEach(users) { user in
                
                Section() {
                    Button(action: {
                        print("selected user \(user.name)")
                    },label: {
                        UserView(user: user)
                    })
                    .foregroundColor(.black)
                }
            }
        }
        .listStyle(GroupedListStyle())
        .onAppear(perform: {fetchUsers()})
            
    }
    
    
    
    func fetchUsers() {
        
        var components = URLComponents()
        
        components.scheme = NetworkModel.scheme
        components.host = NetworkModel.baseHost
        components.path = NetworkModel.usersPath
        
        guard let url = components.url else {
            //self.finishedLoading = true
            //noData = true
            return
        }
        
        print(url)
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            guard let data = data else {
                //self.finishedLoading = true
                //noData = true
                return
            }
            
            if let users = try? JSONDecoder().decode([User].self, from: data) {
                DispatchQueue.main.async {
                    self.users = users
                }
                //self.finishedLoading = true
                //noData = false
                return
            }
            
            //noData = true
            print("Failure : \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
        
    }
    
    
}

struct UsersListView_Previews: PreviewProvider {
    static var previews: some View {
        UsersListView( users: [User]())
    }
}
