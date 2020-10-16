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
