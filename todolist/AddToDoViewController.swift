//
//  AddToDoViewController.swift
//  todolist
//
//  Created by Grace Wentzel on 7/14/20.
//  Copyright © 2020 Grace Wentzel. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var previousVC = ToDoTableTableViewController()
    
    @IBOutlet var newLabel: UIView!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantLabel: UILabel!
    @IBOutlet weak var importantSwitch: UISwitch!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo()

        if let titleText = titleTextField.text {
          toDo.name = titleText
          toDo.important = importantSwitch.isOn
        }
    previousVC.toDos.append(toDo)
    previousVC.tableView.reloadData()
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
