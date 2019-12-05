//
//  ToDo.swift
//  ToDoList
//
//  Created by Tung Nguyen on 12/5/19.
//  Copyright © 2019 Tung Nguyen. All rights reserved.
//

import UIKit

struct ToDo: Codable {
    var title: String
    var isComplete: Bool
    var dueDate: Date
    var notes: String?
    
    static let DocumentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("todos").appendingPathExtension("plist")
    
    static func loadToDos() -> [ToDo]? {
        guard let codedTodos = try? Data(contentsOf: ArchiveURL) else { return nil }
       
        let propertyListDecoder = PropertyListDecoder()
        
        return try? propertyListDecoder.decode(Array<ToDo>.self, from: codedTodos)
    }
    
    static func saveToDos(_ todos: [ToDo]) {
        let propertyListEncoder = PropertyListEncoder()
        let codedTodos = try? propertyListEncoder.encode(todos)
        try? codedTodos?.write(to: ArchiveURL, options: .noFileProtection)
    }
    
    static func loadSampleToDo() -> [ToDo] {
        let todo1 = ToDo(title: "ToDo One", isComplete: false, dueDate: Date(), notes: "Note 1")
        let todo2 = ToDo(title: "ToDo Two", isComplete: false, dueDate: Date(), notes: "Note 2")
        let todo3 = ToDo(title: "ToDo Three", isComplete: false, dueDate: Date(), notes: "Note 3")
        
        return [todo1, todo2, todo3]
    }
    
    static let dueDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }()
}
