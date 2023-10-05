//
//  ToDoViewModel.swift
//  ToDoHomework
//
//  Created by Kadirhan Keles on 3.10.2023.
//

import Foundation
import RxSwift

class ToDoViewModel {
    
    var taskList = BehaviorSubject<[ToDo]>(value:  [ToDo]())
    var trepo = ToDoDaoRepository()
    
    init() {
        trepo.copyDatabase()
        taskList = trepo.taskList
    }
    
    func searchTask(searchString: String) {
        trepo.searchTask(searchString: searchString)
    }
    
    func deleteTask(id: Int) {
        trepo.deleteTask(id: id)
        uploadTask()
    }
    
    func uploadTask() {
        trepo.uploadTask()
    }
}
