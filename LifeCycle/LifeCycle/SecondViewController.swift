//
//  SecondViewController.swift
//  LifeCycle
//
//  Created by Tung Nguyen on 11/8/19.
//  Copyright © 2019 Tung Nguyen. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("Second View Controller - View Did Load")
    }
        
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
            
        print("Second View Controller - View Will Appear")
    }
        
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
            
        print("Second View Controller - View Did Appear")
    }


}
