//
//  ObserverViewController.swift
//  MVVM-DesignPattern
//
//  Created by Anasuya Dev on 07/04/22.
//   
//

import UIKit

class ObserverViewController: UIViewController {

    @IBOutlet weak var titleLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    deinit
    {
        clearObserver()
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            self.view.backgroundColor = .green
            self.titleLbl.text = "Listening"
            setUpObserver()
        } else {
            self.view.backgroundColor = .darkGray
            self.titleLbl.text = "Not Listening"
            clearObserver()
        }
    }
    
    func clearObserver()
    {
        NotificationCenter.default.removeObserver(self)
    }
    
    func setUpObserver()
    {
        NotificationCenter.default.addObserver(self, selector: #selector(self.handleNotification(_:)), name: .myNotification, object: nil)
    }
    
    @objc func handleNotification(_ sender: Notification)
    {
        titleLbl.text = sender.userInfo?["name"] as? String
    }

}
