//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Tung Nguyen on 11/8/19.
//  Copyright © 2019 Tung Nguyen. All rights reserved.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet weak var labelMiddle: UILabel!
    
    var eventNumber = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let existingText = labelMiddle.text {
            labelMiddle.text = "\(existingText)\nEvent Number \(eventNumber) was viewDidLoad"
            eventNumber += 1
        }

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let existingText = labelMiddle.text {
            print("aaa")
            labelMiddle.text = "\(existingText)\nEvent Number \(eventNumber) was viewDidLoad"
            eventNumber += 1
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if let existingText = labelMiddle.text {
            labelMiddle.text = "\(existingText)\nEvent Number \(eventNumber) was viewDidLoad"
            eventNumber += 1
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let existingText = labelMiddle.text {
            labelMiddle.text = "\(existingText)\nEvent Number \(eventNumber) was viewDidLoad"
            eventNumber += 1
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        if let existingText = labelMiddle.text {
            labelMiddle.text = "\(existingText)\nEvent Number \(eventNumber) was viewDidLoad"
            eventNumber += 1
        }
    }
}
