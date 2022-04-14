//
//  MementoViewController.swift
//  MVVM-DesignPattern
//
//  Created by Anasuya Dev on 11/04/22.
//

import UIKit

class MementoViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveUserTapped(_ sender: Any) {
        
        if firstNameTextField.text != "" &&
            lastNameTextField.text != "" &&
            ageTextField.text != "" {
            
            let user = MementoUser(firstName: firstNameTextField.text!,
                            lastName: lastNameTextField.text!,
                            age: ageTextField.text!,
                            stateName: "userKey")
            user.show()
        }
    }
    
    @IBAction func restoreUserTapped(_ sender: Any) {
        
        let user = MementoUser(stateName: "userKey")
        firstNameTextField.text = user.firstName
        lastNameTextField.text = user.lastName
        ageTextField.text = user.age
        user.show()
    }
}
