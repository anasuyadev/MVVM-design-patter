//
//  SingletonViewModel.swift
//  MVVM-DesignPattern
//
//  Created by Anasuya Dev on 07/04/22.
//   
//

import Foundation
class SingletonViewModel{
    static let shared = SingletonViewModel()
    private init(){
        
    }

   let userobject = UserObject()

    func fetchUserObject() -> UserObject{
        return self.userobject
    }
    
    func fetchString() -> String
    {
        return "anasuya"
    }
}
class UserObject{
    
    var name: String = "Here's Singleton Design Pattern!"
    
}
