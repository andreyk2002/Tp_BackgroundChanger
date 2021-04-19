//
//  ViewController.swift
//  lab7_2
//
//  Created by Andrey Kuksa on 4/16/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundLabel: UILabel!
    @IBOutlet weak var backgroundSwitch: UISwitch!
    
    let firstBackground = "Backgrond image : bg1.jpg"
    let secondBackground = "Backgrond image : bg2.jpg"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundLabel.text = firstBackground
        view.backgroundColor = UIColor(patternImage: UIImage(named: "bg1")!)
        
    }
    
    @IBAction func switchTapped(_ sender: Any) {
        if backgroundSwitch.isOn {
            backgroundLabel.text = secondBackground
            view.backgroundColor = UIColor(patternImage: UIImage(named: "bg2")!)
        } else {
            backgroundLabel.text = firstBackground
            view.backgroundColor = UIColor(patternImage: UIImage(named: "bg1")!)
        }
        
    }
}

