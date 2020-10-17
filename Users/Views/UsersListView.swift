//
//  UsersListView.swift
//  Users
//
//  Created by Mohcine BELARREM on 16/10/2020.
//

import SwiftUI

struct UsersListView: View {
    
    @State var finishedLoading = true
    
    @State var noData = false
    
    @State var users : [User]
    
    @ObservedObject var appModel : AppModel
    
    var body: some View {
        
        ZStack {
            List() {
                
                ForEach(users) { user in
                    
                    Section() {
                        Button(action: {
                            
                            self.appModel.selectedUser = user
                            self.appModel.isTaskListViewShown = true
                            
                        },label: {
                            UserView(user: user)
                        })
                        .foregroundColor(.black)
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .onAppear(perform: {
                if users.isEmpty {
                    finishedLoading = false
                    fetchUsers()
                }
            })
            
            SpinnerView(isAnimating: !finishedLoading, style: .large, color: .gray)
            
            Text("No User Data 😵")
                .opacity(noData ? 1.0 : 0.0)
            
        }
            
    }
    
    
    
    func fetchUsers() {
        
        var components = URLComponents()
        
        components.scheme = NetworkModel.scheme
        components.host = NetworkModel.baseHost
        components.path = NetworkModel.usersPath
        
        guard let url = components.url else {
            finishedLoading = true
            noData = true
            return
        }
        
        print(url)
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            guard let data = data else {
                finishedLoading = true
                noData = true
                return
            }
            
            if let users = try? JSONDecoder().decode([User].self, from: data) {
                DispatchQueue.main.async {
                    self.users = users
                }
                finishedLoading = true
                noData = false
                return
            }
            
            noData = true
            print("Failure : \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
        
    }
    
    
}

struct UsersListView_Previews: PreviewProvider {
    static var previews: some View {
        UsersListView( users: [User](), appModel: AppModel())
    }
}
