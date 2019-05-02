//
//  DataService.swift
//  coder-swag
//
//  Created by Benoit Philips on 02/05/2019.
//  Copyright © 2019 HumbeekWave. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService() // A singleton creator (static constant of the class itself)
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
            Category(title: "HOODIES", imageName: "hoodies.png"),
            Category(title: "HATS", imageName: "hats.png"),
            Category(title: "DIGITAL", imageName: "digital.png"),
    ]
    
    func getCategories() -> [Category]{
        return categories
    }
    
}
