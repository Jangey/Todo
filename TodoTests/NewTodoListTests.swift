//
//  NewTodoListTests.swift
//  TodoTests
//
//  Created by Jangey Lu on 10/29/18.
//  Copyright © 2018 Jangey Lu. All rights reserved.
//

import XCTest
@testable import Todo

class NewTodoListTests: XCTestCase {

    var tasks: [Task] = []
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // add a new todo list "Buy lunch"
        tasks.append(Task(name: "Buy lunch"))
    }
    
    func test_addNewTodoList() {
        let result = "Buy lunch"
        
        XCTAssertEqual(tasks[0].name, result)
        XCTAssertFalse(tasks[0].checked)
    }
    
    func test_addEmpty() {
        let tasksSize = tasks.count
        
        // Try to add Empty List
        tasks.append(Task(name: ""))
        
        // the size of tasks still 1, after tried to add empty todo list.
        XCTAssertEqual(tasksSize, Int("1"))
    }
    
}
