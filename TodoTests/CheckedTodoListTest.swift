//
//  CheckedTodoListTest.swift
//  TodoTests
//
//  Created by Jangey Lu on 11/1/18.
//  Copyright © 2018 Jangey Lu. All rights reserved.
//

import XCTest
@testable import Todo

class CheckedTodoListTest: XCTestCase {
    
    var tasks: [Task] = [Task(name: "Buy textbook"), Task(name: "Call my Mom")]
    
    override func setUp() {
        super.setUp()
        
        // Change the todoList "Call my Mom" is Completed
        tasks[1].checked = true
    }
    
    func test_uncompleteTodoChecked() {
        
        XCTAssertFalse(tasks[0].checked)
    }
    
    func test_completedTodoChecked() {
        
        XCTAssertTrue(tasks[1].checked)
    }
}
