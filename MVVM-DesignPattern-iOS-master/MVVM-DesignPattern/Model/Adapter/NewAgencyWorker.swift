//
//  NewAgencyWorker.swift
//  MVVM-DesignPattern
//
//  Created by Anasuya Dev on 12/04/22.
//

import Foundation
import UIKit
class NewAgencyWorker
{
    private var name: String?
    private var division: String?
    
    init(name: String, division: String){
        self.name = name
        self.division = division
    }
    
    func getName() -> String? {
        return self.name
    }
    
    func getDivision() -> String? {
        return self.division
    }
}
class NewAgency {
    private var newWorkers: [String: NewAgencyWorker] = [:]
    
    init() {
        newWorkers = ["worker_1": NewAgencyWorker(name: "Jaya", division: "Android"), "worker_2": NewAgencyWorker(name: "Apoorv", division: "Android")]
    }
    
    func getWorkers() -> [String: NewAgencyWorker] {
        return newWorkers
    }
}
extension NewAgency: WorkerDataSource {
    
    var workers: [Worker] {
        return getWorkers().values.map { (objNewAgencyWorker) -> Worker in
            return Worker(name: objNewAgencyWorker.getName(), department: objNewAgencyWorker.getDivision())
    }
    }
    
    func searchBy(name: String) -> [Worker] {
        createWorker { (objNewAgencyWorker) -> Bool in
            return (objNewAgencyWorker.getName()?.range(of: name) != nil)
        }
    }
    
    func searchIn(dept: String) -> [Worker] {
        createWorker { (objNewAgencyWorker) -> Bool in
            return (objNewAgencyWorker.getDivision()?.range(of: dept) != nil)
            
        }
    }
    
    private func createWorker(filterClousre: (NewAgencyWorker) -> Bool) -> [Worker] {
        let filteredArray = getWorkers().values.filter(filterClousre)
        let workerObjectsArr = filteredArray.map { (objNewAgencyWorker) -> Worker in
            return Worker(name: objNewAgencyWorker.getName(), department: objNewAgencyWorker.getDivision())
        }
        return workerObjectsArr
    }
}
