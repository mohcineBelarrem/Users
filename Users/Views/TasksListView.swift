//
//  TasksListView.swift
//  Users
//
//  Created by Mohcine BELARREM on 16/10/2020.
//

import SwiftUI

struct TasksListView: View {
    
    @State var finishedLoading = true
    
    @State var noData = false
    
    @State var user : User
    
    @State var tasks = [Task]()
    
    var body: some View {
        
        ZStack {
            List() {
                
                ForEach(tasks) { task in
                    Section() {
                           TaskView(task: task)
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .onAppear(perform: {fetchTasks(userId: "\(user.id)")})
            .navigationBarTitle("Tasks",displayMode: .inline)
            
            SpinnerView(isAnimating: !finishedLoading, style: .large, color: .gray)
            
            Text("No Tasks Data 😵")
                .opacity(noData ? 1.0 : 0.0)
        }
        
    }
    
    
     func fetchTasks(userId: String) {
        
        var components = URLComponents()
        
        components.scheme = NetworkModel.scheme
        components.host = NetworkModel.baseHost
        components.path = NetworkModel.tasksPath
        components.queryItems = [NetworkModel.tasksQueryItem(userId: userId)]
        
        guard let url = components.url else {
            finishedLoading = true
            noData = true
            return
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            guard let data = data else {
                finishedLoading = true
                noData = true
                return
            }
            
            if let tasks = try? JSONDecoder().decode([Task].self, from: data) {
                DispatchQueue.main.async {
                    self.tasks = tasks
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

struct TasksListView_Previews: PreviewProvider {
    static var previews: some View {
        TasksListView(user: dummyUser, tasks: dummyTasksList)
    }
}
