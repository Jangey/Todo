//
//  UpdateViewController.swift
//  Todo
//
//  Created by Jangey Lu on 10/25/18.
//  Copyright © 2018 Jangey Lu. All rights reserved.
//

import UIKit

protocol UpdateTask {
    func updateTask(name: String, indexPathRow: Int?)
}

class UpdateViewController: UIViewController {
    
    @IBOutlet weak var updateTextField: UITextField!
    
    var delegate: UpdateTask?
    var indexPath: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func updateButtonPress(_ sender: Any) {
        delegate?.updateTask(name: updateTextField.text!, indexPathRow: indexPath)
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
