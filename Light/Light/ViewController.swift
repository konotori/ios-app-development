//
//  ViewController.swift
//  Light
//
//  Created by Tung Nguyen on 10/21/19.
//  Copyright © 2019 Tung Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true
    
    //MARK: - Life cycle
    override func viewDidLoad(){
        super.viewDidLoad()
        
        updateUI()
    }
    //
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
    
    //MARK: - Actions
    @IBAction func lightButton(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
    
}

