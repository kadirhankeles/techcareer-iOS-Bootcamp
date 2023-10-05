//
//  UpdateToDoViewModel.swift
//  ToDoHomework
//
//  Created by Kadirhan Keles on 3.10.2023.
//

import Foundation

class UpdateToDoViewModel {
    var trepo = ToDoDaoRepository()
    
    func updateTask(id: Int, name: String) {
        trepo.updateTask(id: id, name: name)
    }
}
