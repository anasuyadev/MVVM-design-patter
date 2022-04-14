//
//  ProtocolDisplayViewController.swift
//  MVVM-DesignPattern
//
//  Created by Anasuya Dev on 08/04/22.
//

import UIKit

class ProtocolDisplayViewController: UIViewController, ShareDelegate {

    let slideVC = ProtocolViewController()
    
    @IBOutlet weak var protocolLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        slideVC.delegate = self
    }
    
    func shareName(_ name: String)
    {
        protocolLabel.text = "\(name)  is your favourite band!"
    }
}
