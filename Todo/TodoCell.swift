//
//  TodoCell.swift
//  Todo
//
//  Created by Jangey Lu on 10/24/18.
//  Copyright © 2018 Jangey Lu. All rights reserved.
//

import UIKit

protocol CheckButton {
    func checkButton(checked: Bool, index: Int?)
}

class TodoCell: UITableViewCell {
    
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var todoListLabel: UILabel!
    
    var delegate: CheckButton?
    var currentIndex: Int?
    var tasks: [Task]?
    
    @IBAction func checkPress(_ sender: Any) {
        if tasks![currentIndex!].checked {
            delegate?.checkButton(checked: false, index: currentIndex!)
        } else {
            delegate?.checkButton(checked: true, index: currentIndex!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
