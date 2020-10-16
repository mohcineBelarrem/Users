//
//  TaskView.swift
//  Users
//
//  Created by Mohcine BELARREM on 16/10/2020.
//

import SwiftUI

struct TaskView: View {
    
    @State var task : Task
    
    var body: some View {
        
        HStack(spacing: 10) {
            Image(systemName: task.completed ? "checkmark" : "timer")
                .foregroundColor(task.completed ? .green : .orange)
            Text(task.title)
                .font(.title3)
        }
        
        
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView(task: dummyTask)
    }
}
