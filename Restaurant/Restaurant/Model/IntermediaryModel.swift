//
//  IntermediaryModel.swift
//  Restaurant
//
//  Created by Tung Nguyen on 12/11/19.
//  Copyright © 2019 Tung Nguyen. All rights reserved.
//

import Foundation

struct Categories: Codable {
    let categories: [String]
}

struct PreparetionTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
