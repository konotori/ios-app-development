//
//  ViewController.swift
//  Contest
//
//  Created by Tung Nguyen on 12/9/19.
//  Copyright © 2019 Tung Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        if let text = emailTextField.text, !text.isEmpty {
            performSegue(withIdentifier: "sucess", sender: nil)
        } else {
            shakeTextField()
        }
    }
    
    func shakeTextField() {
        UIView.animate(withDuration: 0.1, animations: {
            let translationRight = CGAffineTransform(translationX: 10, y: 0)
            self.emailTextField.transform = translationRight
        }) { (_) in
            UIView.animate(withDuration: 0.1, animations: {
                let translationLeft = CGAffineTransform(translationX: -20, y: 0)
                self.emailTextField.transform = translationLeft
            }, completion: { (_) in
                self.emailTextField.transform = CGAffineTransform.identity
            })
        }
    }
}


