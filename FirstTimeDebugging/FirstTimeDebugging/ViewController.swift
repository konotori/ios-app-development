//
//  ViewController.swift
//  FirstTimeDebugging
//
//  Created by Tung Nguyen on 11/22/19.
//  Copyright © 2019 Tung Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let sample = "sample"
        print(sample)
        
        if true {
            print("Will this line of code ever be reached?")
            someMethod()
        }
}
    func someMethod() {

       }


}
