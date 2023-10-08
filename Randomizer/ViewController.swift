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
    @IBOutlet weak var getResultsButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        getResultsButton.layer.cornerRadius = 10
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
    
        settingsVC.tempMinimum = minimumValue.text
        settingsVC.tempMaximum = maximumValue.text
    }
    
    @IBAction func getresultsButton() {
        let minimumNumber = Int(minimumValue.text ?? "") ?? 0
        let maximumNumber = Int(maximumValue.text ?? "") ?? 100
        resultValue.text = Int.random(in: minimumNumber...maximumNumber).formatted()
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingsVC = segue.source as? SettingsViewController else { return }
        minimumValue.text = settingsVC.minimumTF.text
        maximumValue.text = settingsVC.maximumTF.text
    }
    
}

