//
//  NewTodoListViewController.swift
//  Todo
//
//  Created by Jangey Lu on 10/24/18.
//  Copyright © 2018 Jangey Lu. All rights reserved.
//

import UIKit

protocol NewTask {
    func newTask(name: String)
}

class NewTodoListViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    var delegate: NewTask?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = "New Todo List"
    }
    
    @IBAction func addPress(_ sender: Any) {
        if textField.text == "" {
            // Alert User it's empty input
            let alertController = UIAlertController(title: "Add New Todo List Fail", message: "Check the todo list is not empty, please try again!", preferredStyle: .alert)
            
            present(alertController, animated: false) {
                let OKAction = UIAlertAction(title: "Try Agian", style: .default) { (action) in
                }
                alertController.addAction(OKAction)
            }
        } else {
            // Check the new list is not empty
            delegate?.newTask(name: textField.text!)
            navigationController?.popViewController(animated: true)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
