//
//  AddToDoViewController.swift
//  ToDoHomework
//
//  Created by Kadirhan Keles on 3.10.2023.
//

import UIKit

class AddToDoViewController: UIViewController {

    @IBOutlet weak var tfDetail: UITextField!
    
    var viewModel = AddToDoViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonAdd(_ sender: Any) {
        if let name = tfDetail.text {
            viewModel.saveTask(name: name)
            self.navigationController?.popToRootViewController(animated: true)
        }
    }
    

}
