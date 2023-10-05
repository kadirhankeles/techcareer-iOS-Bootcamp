//
//  ToDoDaoRepository.swift
//  ToDoHomework
//
//  Created by Kadirhan Keles on 3.10.2023.
//

import Foundation
import RxSwift

class ToDoDaoRepository {
    var taskList = BehaviorSubject<[ToDo]>(value:  [ToDo]())
    
    let db: FMDatabase?
    
    init() {
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
        
    }
    
    func saveTask(name: String) {
        db?.open()
        do {
            try db!.executeUpdate("INSERT INTO todo (name) VALUES (?)", values: [name])
        } catch {
            print(error.localizedDescription)
        }
        db?.close()
    }
    
    func updateTask(id: Int, name: String) {
        db?.open()
        do {
            try db!.executeUpdate("UPDATE todo SET name=? WHERE id=?", values: [name,id])
        } catch {
            print(error.localizedDescription)
        }
        db?.close()
    }
    
    func searchTask(searchString: String) {
        db?.open()
        var list = [ToDo]()
        
        do {
            let rs = try db!.executeQuery("SELECT * FROM todo WHERE name like '%\(searchString)%'", values: nil)
            
            while rs.next() {
                let id = Int(rs.string(forColumn: "id"))!
                let name = rs.string(forColumn: "name")!

                let todo = ToDo(id: id, name: name)
                list.append(todo)
            }
            
            if list.isEmpty {
                print("Veri Yok")
            } else {
                taskList.onNext(list)
                
            }
            
        } catch {
            print("Veritabanı Hatası: \(error.localizedDescription)")
        }
        
        db?.close()
    }
    
    func deleteTask(id: Int) {
        db?.open()
        do {
            try db!.executeUpdate("DELETE FROM todo WHERE id=?", values: [id])
        } catch {
            print(error.localizedDescription)
        }
        db?.close()
    }
    
    func uploadTask() {
        db?.open()
        var list = [ToDo]()
        
        do {
            let rs = try db!.executeQuery("SELECT * FROM todo", values: nil)
            
            while rs.next() {
                let id = Int(rs.string(forColumn: "id"))!
                let name = rs.string(forColumn: "name")!

                let todo = ToDo(id: id, name: name)
                list.append(todo)
            }
            
            if list.isEmpty {
                print("Veri Yok")
            } else {
                taskList.onNext(list)
            }
            
        } catch {
            print("Veritabanı Hatası: \(error.localizedDescription)")
        }
        
        db?.close()
    }

    
    func copyDatabase(){
            let bundleYolu = Bundle.main.path(forResource: "rehber", ofType: ".sqlite")
            let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
            let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
            let fileManager = FileManager.default
            if fileManager.fileExists(atPath: kopyalanacakYer.path){
                print("Veritabanı zaten var")
            }else{
                do{
                    try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
                }catch{}
            }
        }
}
