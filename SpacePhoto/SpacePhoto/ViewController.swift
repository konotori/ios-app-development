//
//  ViewController.swift
//  SpacePhoto
//
//  Created by Tung Nguyen on 12/10/19.
//  Copyright © 2019 Tung Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var copyRightLabel: UILabel!
    
    // MARK: - Properties
    
    let photoInfoController = PhotoInfoController()
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        descriptionLabel.text = ""
        copyRightLabel.text = ""
        
        photoInfoController.fetchPhotoInfo{ (photoInfo) in
            if let photoInfo = photoInfo {
                self.updateUI(with: photoInfo)
            } 
        }
    }
    
    // MARK: - Functions
    
    func updateUI(with photoInfo: PhotoInfo) {
        guard let url = photoInfo.url.withHTTPS() else { return }
        
        let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            if let data = data,
                let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    self.title = photoInfo.title
                    self.image.image = image
                    self.descriptionLabel.text = photoInfo.description
                    
                    if let copyright = photoInfo.copyright {
                        self.copyRightLabel.text = "Copyright \(copyright)"
                    } else {
                        self.copyRightLabel.text = ""
                    }
                }
            }
        })
        task.resume()
    }
}

