//
//  AppModel.swift
//  Users
//
//  Created by Mohcine BELARREM on 16/10/2020.
//

import Foundation



class AppModel : ObservableObject {
    
    @Published var isTaskListViewShown = false
    
    @Published var selectedUser = dummyUser
    
}
