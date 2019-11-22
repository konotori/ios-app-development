//
//  ViewController.swift
//  TwoButtons
//
//  Created by Tung Nguyen on 10/30/19.
//  Copyright © 2019 Tung Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func setTextButtonTapped(_ sender: UIButton) {
        if let text = textField.text {
            textLabel.text = text
        }
    }
    
    @IBAction func clearTextbuttonTapped(_ sender: UIButton) {
        textLabel.text = ""
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

