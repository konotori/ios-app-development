//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Tung Nguyen on 11/22/19.
//  Copyright © 2019 Tung Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeTitle(_ sender: Any) {
        myLabel.text = "This app's rock"
    }
    
}

