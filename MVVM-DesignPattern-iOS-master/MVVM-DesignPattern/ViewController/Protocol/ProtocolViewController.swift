//
//  ProtocolViewController.swift
//  MVVM-DesignPattern
//
//  Created by Anasuya Dev on 08/04/22.
//

import UIKit
protocol ShareDelegate: class {
    func shareName(_ name: String)
}

class ProtocolViewController: UIViewController {

    weak var delegate: ShareDelegate?

    @IBOutlet weak var protocolField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goButton(_ sender: UIButton) {
        self.delegate?.shareName(protocolField.text!)
    }
    
}
