//
//  DesignTableViewController.swift
//  MVVM-DesignPattern
//
//  Created by Anasuya Dev on 08/04/22.
//

import UIKit

class DesignTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var designTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Design Patterns"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DesignTableViewCell", for: indexPath) as! DesignTableViewCell
        if indexPath.row == 0
        {
            cell.titleLabel.text = "Singleton "
        }
        else if indexPath.row == 1
        {
            cell.titleLabel.text = "Observer "
        }
        else if indexPath.row == 2
        {
            cell.titleLabel.text = "Protocol "
        }
        else if indexPath.row == 3
        {
            cell.titleLabel.text = "Memento "
        }
        else if indexPath.row == 4
        {
            cell.titleLabel.text = "Adapter "
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0
        {
            let storyBoard: UIStoryboard = UIStoryboard(name: "Singleton", bundle: nil)
            let vc = storyBoard.instantiateViewController(withIdentifier: "SingletonViewController") as! SingletonViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
         if indexPath.row == 1
         {
             let storyBoard: UIStoryboard = UIStoryboard(name: "Observer", bundle: nil)
             let vc = storyBoard.instantiateViewController(withIdentifier: "ObserverViewController") as! ObserverViewController
             self.navigationController?.pushViewController(vc, animated: true)
         }
         if indexPath.row == 2
         {
             let storyBoard: UIStoryboard = UIStoryboard(name: "Protocol", bundle: nil)
             let vc = storyBoard.instantiateViewController(withIdentifier: "ProtocolViewController") as! ProtocolViewController
             self.navigationController?.pushViewController(vc, animated: true)
         }
        if indexPath.row == 3
        {
            let storyBoard: UIStoryboard = UIStoryboard(name: "Memento", bundle: nil)
            let vc = storyBoard.instantiateViewController(withIdentifier: "MementoViewController") as! MementoViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
        if indexPath.row == 4
        {
            let storyBoard: UIStoryboard = UIStoryboard(name: "Adapter", bundle: nil)
            let vc = storyBoard.instantiateViewController(withIdentifier: "AdapterViewController") as! AdapterViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
