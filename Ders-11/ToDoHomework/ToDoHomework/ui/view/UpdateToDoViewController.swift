//
//  UpdateToDoViewController.swift
//  ToDoHomework
//
//  Created by Kadirhan Keles on 3.10.2023.
//

import UIKit

class UpdateToDoViewController: UIViewController {

    @IBOutlet weak var tfDetail: UITextField!
    var toDo: ToDo?
    var viewModel = UpdateToDoViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let t = toDo {
            tfDetail.text = t.name
        }
        
    }
    

    @IBAction func buttonUpdate(_ sender: Any) {
        if let name = tfDetail.text, let t = toDo {
            viewModel.updateTask(id: t.id!, name: name)
            self.navigationController?.popToRootViewController(animated: true)
        }
    }
    
    
}
