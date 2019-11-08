//
//  ViewController.swift
//  Login
//
//  Created by Tung Nguyen on 11/6/19.
//  Copyright © 2019 Tung Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func forgotUserNameTapped(_ sender: Any) {
        performSegue(withIdentifier: "forgot", sender: forgotUserNameButton)
    }
    
    
    @IBAction func forgotPasswordTapped(_ sender: Any) {
                performSegue(withIdentifier: "forgot", sender: forgotPasswordButton)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot User Name"
        } else {
            segue.destination.navigationItem.title = userNameTextField.text
        }
    }
}

		
