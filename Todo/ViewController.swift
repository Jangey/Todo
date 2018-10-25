//
//  ViewController.swift
//  Todo
//
//  Created by Jangey Lu on 10/24/18.
//  Copyright © 2018 Jangey Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, NewTask, CheckButton {
    
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
        
        //update when list check or uncheck
        let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: tasks[indexPath.row].name)
        if tasks[indexPath.row].checked {
            // strickthroughtStyle if checked
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
            
            cell.todoListLabel.attributedText = attributeString
            cell.checkButton.setTitle("\u{2705}", for: .normal) // U+2705 ✅ GREEN HEAVY CHECK MARK
        } else {
            // uncheck list adn un-do strikethrought style
            cell.todoListLabel.attributedText = attributeString
            cell.checkButton.setTitle("\u{2753}", for: .normal) // ❓, Unicode scalar U+2753
        }
        
        cell.delegate = self
        cell.currentIndex = indexPath.row
        cell.tasks = tasks
        
        return cell
    }
    
    func newTask(name: String) {
        tasks.append(Task(name: name))
        tableView.reloadData()
    }
    
    func checkButton(checked: Bool, index: Int?) {
        tasks[index!].checked = checked
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! NewTodoListViewController
        vc.delegate = self
    }
}

class Task {
    var name = ""
    var checked = false
    
    convenience init(name: String) {
        self.init()
        self.name = name
    }
}
