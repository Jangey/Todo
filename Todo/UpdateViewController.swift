//
//  UpdateViewController.swift
//  Todo
//
//  Created by Jangey Lu on 10/25/18.
//  Copyright © 2018 Jangey Lu. All rights reserved.
//

import UIKit

class UpdateViewController: UIViewController {
    
    @IBOutlet weak var updateTextField: UITextField!
    
//    var updateName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func updateButtonPress(_ sender: Any) {
//        print(updateName!)
//        updateName = updateTextField.text!
//        print(updateName!)
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
