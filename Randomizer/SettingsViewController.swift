//
//  SettingsViewController.swift
//  Randomizer
//
//  Created by John Doe on 07.10.2023.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var minimumTF: UITextField!
    @IBOutlet weak var maximumTF: UITextField!
    var tempMinimum :String!
    var tempMaximum :String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minimumTF.text = tempMinimum
        maximumTF.text = tempMaximum
    }
    
    @IBAction func savePressed() {
    }
    
    @IBAction func cancelPressed() {
        dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
