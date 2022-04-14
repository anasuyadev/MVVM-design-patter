//
//  ObserverNotificationViewController.swift
//  MVVM-DesignPattern
//
//  Created by Anasuya Dev on 07/04/22.
//   
//

import UIKit

class ObserverNotificationViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveBtnClicked(_ sender: UIButton) {
        NotificationCenter.default.post(name: .myNotification, object: nil, userInfo: ["name": nameField.text ?? ""])
    }
    
}

extension NSNotification.Name
{
    static let myNotification = NSNotification.Name("Anasuya")
}
