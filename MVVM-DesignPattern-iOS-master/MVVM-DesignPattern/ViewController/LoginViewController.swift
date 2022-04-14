//
//  ViewController.swift
//  MVVM-DesignPattern
//
//  Created by Anasuya Dev on 06/04/22.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var lblMessage:UILabel!
    @IBOutlet weak var txtUserName:UITextField!
    @IBOutlet weak var txtPassword:UITextField!
    
    var authenticationVM = AuthenticationVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.lblMessage.isHidden = true
    }

    //MARK:- loginUser
    @IBAction func loginUser(_ sender: Any) {
        self.lblMessage.isHidden = true
        guard let userName = self.txtUserName.text else {return}
        guard let password = self.txtPassword.text else {return}
        
        authenticationVM.loginCompletionHandler { [weak self] (status, message) in
            guard let self = self else {return}
            if status {
//                print("\(self.authenticationVM.username)")
//                let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//                let vc = storyBoard.instantiateViewController(withIdentifier: "") as!
                
//                vc.lblMessage.text = self.authenticationVM.username
//                self.delegate = vc
//                self.delegate?.shareName(self.authenticationVM.username)
//                self.navigationController?.pushViewController(vc, animated: true)
                
//                NotificationCenter.default.post(name: .myNotification, object: nil, userInfo: ["name": "\(self.authenticationVM.username)" ])

                
                self.lblMessage.text = "Logged in with username = \(self.authenticationVM.username) and email = \(self.authenticationVM.email)"
                self.lblMessage.isHidden = false
            } else {
                self.lblMessage.text = message
                self.lblMessage.isHidden = false
            }
        }
        authenticationVM.authenticateUserWith(userName, andPassword: password)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

//extension NSNotification.Name
//{
//    static let myNotification = NSNotification.Name("Anasuya")
//}

