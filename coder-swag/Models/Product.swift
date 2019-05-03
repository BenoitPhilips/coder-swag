//
//  Product.swift
//  coder-swag
//
//  Created by Benoit Philips on 03/05/2019.
//  Copyright © 2019 HumbeekWave. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var parentCategory : String
    private(set) public var title : String
    private(set) public var imageName : String
    private(set) public var price : String

    init(parentCategory: String, title: String, imageName: String, price: String) {
        self.parentCategory = parentCategory
        self.title = title
        self.imageName = imageName
        self.price = price
    }
    
}
