//
//  ViewController.swift
//  Todo
//
//  Created by Jangey Lu on 10/24/18.
//  Copyright © 2018 Jangey Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, NewTask {
    
    @IBOutlet weak var tableView: UITableView!
    
    var tasks: [Task] = []
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tasks.append(Task(name: "test"))
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath) as! TodoCell
        cell.todoListLabel.text = tasks[indexPath.row].name
        
        return cell
    }
    
    func newTask(name: String) {
        tasks.append(Task(name: name))
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! NewTodoListViewController
        vc.delegate = self
    }
}

class Task {
    var name = ""
    var check = false
    
    convenience init(name: String) {
        self.init()
        self.name = name
    }
}
