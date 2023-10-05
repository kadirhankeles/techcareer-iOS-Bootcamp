//
//  AddToDoViewModel.swift
//  ToDoHomework
//
//  Created by Kadirhan Keles on 3.10.2023.
//

import Foundation

class AddToDoViewModel {
    var trepo = ToDoDaoRepository()
    
    func saveTask(name: String) {
        trepo.saveTask(name: name)
    }
}
