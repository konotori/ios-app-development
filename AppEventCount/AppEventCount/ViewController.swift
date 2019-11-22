//
//  ViewController.swift
//  AppEventCount
//
//  Created by Tung Nguyen on 11/20/19.
//  Copyright © 2019 Tung Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var didFinishLauchingLabel: UILabel!
   
    @IBOutlet weak var willResignActiveLabel: UILabel!
    
    @IBOutlet weak var didEnterBackGroundLabel: UILabel!
    
    @IBOutlet weak var willEnterForeGroundLabel: UILabel!
    
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
        
    @IBOutlet weak var willTerminateLabel: UILabel!
    
    var lauchCount = 0
    var resignCount = 0
    var backgroundCount = 0
    var foregroundCount = 0
    var activeCount = 0
    var terminateCount = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        updateView()
    }

    func updateView() {
        didFinishLauchingLabel.text = "The app hash lauched \(lauchCount) times"
        willResignActiveLabel.text = "The app resign \(resignCount) times"
        didEnterBackGroundLabel.text = "The app enter background \(backgroundCount) times"
        willEnterForeGroundLabel.text = "The app enter foreground \(foregroundCount) times"
        didBecomeActiveLabel.text = "The app become active \(activeCount) times"
        willTerminateLabel.text = "The app terminate \(terminateCount) times"
    }
    
}

