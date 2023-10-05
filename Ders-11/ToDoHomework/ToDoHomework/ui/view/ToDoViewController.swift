//
//  ViewController.swift
//  ToDoHomework
//
//  Created by Kadirhan Keles on 3.10.2023.
//

import UIKit
import RxSwift

class ToDoViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var taskList = [ToDo]()
    var viewModel = ToDoViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        
        _ = viewModel.taskList.subscribe(onNext: { list in
            self.taskList = list
            self.tableView.reloadData()
        })
    }

    override func viewWillAppear(_ animated: Bool) {
        viewModel.uploadTask()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toUpdate" {
            if let todo = sender as? ToDo {
                let sendVC = segue.destination as! UpdateToDoViewController
                sendVC.toDo = todo
            }
        }
    }

}

extension ToDoViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        viewModel.searchTask(searchString: searchText)
    }
}

extension ToDoViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        taskList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell") as! ToDoTableViewCell
        
        let task = taskList[indexPath.row]
        cell.labelName.text = task.name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let task = taskList[indexPath.row]
        print(task.name!)
        performSegue(withIdentifier: "toUpdate", sender: task)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { contexualAction, view, bool in
            let task = self.taskList[indexPath.row]
            
            let alert = UIAlertController(title: "Deletion process", message: "Are you sure you want to delete it?", preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
            let yesAction = UIAlertAction(title: "Delete", style: .destructive) { action in
                self.viewModel.deleteTask(id: task.id!)
            }
            alert.addAction(cancelAction)
            alert.addAction(yesAction)
            self.present(alert, animated: true)
            
        }
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
    
}
