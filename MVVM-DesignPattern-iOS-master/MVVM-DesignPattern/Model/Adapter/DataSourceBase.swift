//
//  DataSourceBase.swift
//  MVVM-DesignPattern
//
//  Created by Anasuya Dev on 12/04/22.
//

import Foundation
import UIKit
class DataSourceBase: WorkerDataSource {
    var workers = [Worker]()
    
    func searchBy(name: String) -> [Worker] {
        return search { (worker) -> Bool in
            return (worker.name?.range(of: name) != nil)
        }
    }
    
    func searchIn(dept: String) -> [Worker] {
        return search { (worker) -> Bool in
            return (worker.department?.range(of: dept) != nil)
        }
    }
    
    private func search(selector: ((Worker) -> Bool)) -> [Worker]
    {
        var result = [Worker]()
        for w in workers{
            if (selector(w)){
                result.append(w)
            }
        }
        return result
    }
}

class AssemblyDeptDataSource: DataSourceBase {
    override init() {
        super.init()
        workers.append(Worker(name: "Anasuya", department: "Developer"))
        workers.append(Worker(name: "Sweety", department: "Developer"))
    }
}

class ProductionDeptDataSource:  DataSourceBase {
    override init() {
        super.init()
        workers.append(Worker(name: "Maneesh", department: "Manager"))
        workers.append(Worker(name: "Ashish", department: "Manager"))
    }
}


