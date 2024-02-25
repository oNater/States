//
//  SecondViewController.swift
//  States
//
//  Created by user250623 on 2/24/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    // Outlets for the labels in your storyboard
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var capitalLabel: UILabel!
    
    // The property to hold the state and capital information
    var stateCapital: StateCapital?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the labels to the values passed from the previous view controller
        if let stateCapital = stateCapital {
            stateLabel.text = stateCapital.state
            capitalLabel.text = stateCapital.capital
        }
    }
}
