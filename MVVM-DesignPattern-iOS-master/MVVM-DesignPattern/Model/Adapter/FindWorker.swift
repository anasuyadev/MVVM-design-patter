//
//  FindWorker.swift
//  MVVM-DesignPattern
//
//  Created by Anasuya Dev on 12/04/22.
//

import Foundation
class FindWorker
{
    enum SearchType: Int {
        case name = 0
        case department
    }
    
    private var dataSources: [WorkerDataSource]? = nil
    
    init(dataSources: WorkerDataSource...)
    {
        self.dataSources = dataSources
    }
    
    var workers: [Worker]?
    {
        var result = [Worker]()
        if let dataS = dataSources{
            for source in dataS{
                if source.workers.count > 0 {
                    result.append(contentsOf: source.workers)
                }
            }
            return result
        }
        return nil
    }
    
    func search(str: String, type: SearchType) -> [Worker]
    {
        var workers = [Worker]()
        if let sources = dataSources {
            for workerDataSorce in sources {
                let result = type == SearchType.name ? workerDataSorce.searchBy(name: str) : workerDataSorce.searchIn(dept: str)
                workers.append(contentsOf: result)
            }
            return workers
        }
        return []
    }
}

