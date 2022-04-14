//
//  Worker.swift
//  MVVM-DesignPattern
//
//  Created by Anasuya Dev on 12/04/22.
//

import Foundation
struct Worker {
    var name: String?
    var department: String?
}

protocol WorkerDataSource {
    var workers: [Worker] {get}
    func searchBy(name: String) -> [Worker]
    func searchIn(dept: String) -> [Worker]
}
