//
//  SingletonViewController.swift
//  MVVM-DesignPattern
//
//  Created by Anasuya Dev on 06/04/22.
//
//

import UIKit

class SingletonViewController: UIViewController {

//    let slideVC = SingletonViewModel()

//    var str: String?
    var user = SingletonViewModel.shared.fetchUserObject()
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var lblMessage: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
//       str = "\(slideVC.fetchString()) + Sweety"
//        print(str)
        titleLabel.text = user.name

        // Do any additional setup after loading the view.
    }
}
