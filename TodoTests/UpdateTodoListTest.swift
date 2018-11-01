//
//  UpdateTodoListTest.swift
//  TodoTests
//
//  Created by Jangey Lu on 11/1/18.
//  Copyright © 2018 Jangey Lu. All rights reserved.
//

import XCTest
@testable import Todo

class UpdateTodoListTest: XCTestCase {
    
    var tasks: [Task] = [Task(name: "Go to School on Sunday")]

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // update the todo list name from "Go to School on Sunday" to "Go to School on Monday"
        tasks[0].name = "Go to School on Monday"
    }

    func test_updateTodoListName() {
        let oldResult = "Go to School on Sunday"
        let newResult = "Go to School on Monday"
        
        // result not equal to oldResult
        XCTAssertNotEqual(tasks[0].name, oldResult)
        
        // result equal to newResult
        XCTAssertEqual(tasks[0].name, newResult)
    }

}
