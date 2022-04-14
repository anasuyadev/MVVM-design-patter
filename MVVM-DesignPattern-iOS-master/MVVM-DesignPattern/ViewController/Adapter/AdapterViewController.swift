//
//  AdapterViewController.swift
//  MVVM-DesignPattern
//
//  Created by Anasuya Dev on 12/04/22.
//

import UIKit

class AdapterViewController: UIViewController {

    let utility = FindWorker(dataSources: AssemblyDeptDataSource(),
                             ProductionDeptDataSource(), NewAgency())
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var deptLabel: UILabel!
    @IBOutlet weak var listLabel: UILabel!
    @IBOutlet weak var searchWorkerField: UITextField!
    @IBAction func searchWorkerButton(_ sender: UIButton) {
        print("Search...")
        
        for w in utility.search(str: searchWorkerField.text!, type: FindWorker.SearchType.name){
            nameLabel.isHidden = false
            nameLabel.text = w.name
            deptLabel.isHidden = false
            deptLabel.text = w.department
            print("Name: \(String(describing: w.name)), Department: \(String(describing: w.department))")
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("List...")
        for w in utility.workers! {
            listLabel.text = w.name
            print("Name: \(String(describing: w.name))")
        }
        nameLabel.isHidden = true
        deptLabel.isHidden = true
//        print("Workers...");
//        for w in utility.workers! {
//            print("Name: \(String(describing: w.name))");
//            }
       
        
        
//        for w in utility.search(str: "Anasuya", type: FindWorker.SearchType.name){
//            print("Name: \(String(describing: w.name)), Department: \(String(describing: w.department))");
//            }
    }
}
    

    

