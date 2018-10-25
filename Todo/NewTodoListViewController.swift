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
    }
    
    @IBAction func addPress(_ sender: Any) {
        delegate?.newTask(name: textField.text!)
        navigationController?.popViewController(animated: true)
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
