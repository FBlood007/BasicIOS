//
//  ViewController.swift
//  DemoIOS
//
//  Created by user214346 on 2/2/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var buttonLabel: UIButton!
    @IBOutlet weak var textLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textLabel.delegate = self
        nameLabel.text = ""
    }
    @IBAction func buttonAction(_ sender: Any) {
        nameLabel.text = textLabel.text
        textLabel.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        nameLabel.text = textLabel.text
        textLabel.text = ""
        return true
    }
}


