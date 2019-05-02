//
//  Category.swift
//  coder-swag
//
//  Created by Benoit Philips on 02/05/2019.
//  Copyright © 2019 HumbeekWave. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title : String
    private(set) public var imageName : String
 
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
