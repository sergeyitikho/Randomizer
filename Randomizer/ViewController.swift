//
//  ViewController.swift
//  Randomizer
//
//  Created by John Doe on 07.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var minimumValue: UILabel!
    @IBOutlet weak var maximumValue: UILabel!
    @IBOutlet weak var resultValue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getresultsButton() {
        let minimumNumber = Int(minimumValue.text ?? "") ?? 0
        let maximumNumber = Int(maximumValue.text ?? "") ?? 100
        resultValue.text = Int.random(in: minimumNumber...maximumNumber).formatted()
    }
    
}

