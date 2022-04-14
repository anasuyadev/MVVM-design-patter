//
//  MementoUser.swift
//  MVVM-DesignPattern
//
//  Created by Anasuya Dev on 11/04/22.
//

import Foundation

protocol Memento : class {
    
    var stateName: String { get }
    var state: Dictionary<String, String> { get set }
    
    func save()
    
    func restore()
    
    func persist()
    
    func recover()
    
    func show()
    
}

extension Memento {
    
    func save() {
        UserDefaults.standard.set(state, forKey: stateName)
    }
    
    func restore() {
        
        if let dictionary = UserDefaults.standard.object(forKey: stateName) as! Dictionary<String, String>? {
            state = dictionary
        }
        else {
            state.removeAll()
        }
        
    }
    
    func show() {
        
        var line = ""
        
        if state.count > 0 {
            
            for (key, value) in state {
                line += key + ": " + value + "\n"
            }
            
            print(line)
            
        }
        
        else {
            print("Empty entity.\n")
        }
            
    }
    
}

class MementoUser: Memento {
    
    let stateName: String
    var state: Dictionary<String, String>
    
    var firstName: String
    var lastName: String
    var age: String
    
    init(firstName: String, lastName: String, age: String, stateName: String) {
        
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        
        self.stateName = stateName
        self.state = Dictionary<String, String>()
        
        persist()
        
    }
    
    init(stateName: String) {
        
        self.stateName = stateName
        self.state = Dictionary<String, String>()
        
        self.firstName = ""
        self.lastName = ""
        self.age = ""
        
        recover()
        
    }

    func persist() {
        
        state["firstName"] = firstName
        state["lastName"] = lastName
        state["age"] = age
        
        save()
        
    }
    
    func recover() {
        
        restore()
            
        if state.count > 0 {
            firstName = state["firstName"]!
            lastName = state["lastName"]!
            age = state["age"]!
        }
        else {
            self.firstName = ""
            self.lastName = ""
            self.age = ""
        }
        
    }
    
}
