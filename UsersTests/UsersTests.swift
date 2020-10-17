//
//  UsersTests.swift
//  UsersTests
//
//  Created by Mohcine BELARREM on 18/10/2020.
//

import XCTest
@testable import Users

class UsersTests: XCTestCase {

    func testJSONMapping() throws {
        let bundle = Bundle(for: type(of: self))

        let file = "users.json"
        
        guard let url = bundle.url(forResource: file, withExtension: nil) else {
            XCTFail("Couldn't locate \(file)")
            return
        }

        guard let data = try? Data(contentsOf: url) else {
            XCTFail("Couldn't load data from \(file)")
            return
        }

        let decoder = JSONDecoder()

        guard let users = try? decoder.decode([User].self, from: data) else {
            XCTFail("Failed to decode \(file) from bundle.")
            return
        }
        
        
        XCTAssertEqual(users.count, 3)
        
        let hamid = users[0]
        let karim = users[1]
        let clem =  users[2]
        
        
        XCTAssertEqual(hamid.name, "Hamid El Mardi")
        
        XCTAssertEqual(karim.email, "kay@skyblog.tv")
        
        XCTAssertEqual(clem.email, "clem@orange.net")
        
        XCTAssertEqual(clem.name, "Clementine 🍊")
        
        
    }
    
    func testJSONMappingForTasks() throws {
        let bundle = Bundle(for: type(of: self))

        let file = "tasks.json"
        
        guard let url = bundle.url(forResource: file, withExtension: nil) else {
            XCTFail("Couldn't locate \(file)")
            return
        }

        guard let data = try? Data(contentsOf: url) else {
            XCTFail("Couldn't load data from \(file)")
            return
        }

        let decoder = JSONDecoder()

        guard let tasks = try? decoder.decode([Task].self, from: data) else {
            XCTFail("Failed to decode \(file) from bundle.")
            return
        }
        
        
        XCTAssertEqual(tasks.count, 3)
        
        let task1 = tasks[0]
        let task2 = tasks[1]
        let task3 = tasks[2]
        
        
        XCTAssertEqual(task1.title, "Task 1")
        
        XCTAssertEqual(task2.id,2)
        
        XCTAssertTrue(task3.completed)
        
     }

}

