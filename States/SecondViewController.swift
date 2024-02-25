//
//  SecondViewController.swift
//  States
//
//  Created by user250623 on 2/24/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var capitalLabel: UILabel!
    
    var stateCapital: StateCapital?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let stateCapital = stateCapital {
            stateLabel.text = stateCapital.state
            capitalLabel.text = stateCapital.capital
        }
    }
}
