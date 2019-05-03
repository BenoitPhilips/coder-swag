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
        Category(title: "KITCHEN", imageName: "kitchen.png"),
        Category(title: "HOUSE", imageName: "house.png"),
        Category(title: "GARDEN", imageName: "garden.png"),
    ]
    
    private let products = [
        Product(parentCategory: "HATS", title: "Devslopes Logo Graphic Beanie",  imageName: "hat01.png",price: "$18"),
        Product(parentCategory: "HATS", title: "Devslopes Logo Hat Black", imageName: "hat02.png", price: "$22"),
        Product(parentCategory: "HATS", title: "Devslopes Logo Hat White", imageName: "hat03.png", price: "$22"),
        Product(parentCategory: "HATS", title: "Devslopes Logo Snapback", imageName: "hat04.png", price: "$20"),
        Product(parentCategory: "HOODIES", title: "Devslopes Logo Hoodie Grey", imageName: "hoodie01.png", price: "$32"),
        Product(parentCategory: "HOODIES", title: "Devslopes Logo Hoodie Red", imageName: "hoodie02.png", price: "$32"),
        Product(parentCategory: "HOODIES", title: "Devslopes Hoodie Grey", imageName: "hoodie03.png", price: "$32"),
        Product(parentCategory: "HOODIES", title: "Devslopes Hoodie Black", imageName: "hoodie04.png", price: "$32"),
        Product(parentCategory: "SHIRTS", title: "Devslopes Logo Shirt Black", imageName: "shirt01.png", price: "$18"),
        Product(parentCategory: "SHIRTS", title: "Devslopes Badge Shirt Light Grey", imageName: "shirt02.png", price: "$19"),
        Product(parentCategory: "SHIRTS", title: "Devslopes Logo Shirt Red", imageName: "shirt03.png", price: "$18"),
        Product(parentCategory: "SHIRTS", title: "Hustle Delegate Grey", imageName: "shirt04.png", price: "$18"),
        Product(parentCategory: "SHIRTS", title: "Kickflip Studios Black", imageName: "shirt05.png", price: "$18"),
        Product(parentCategory: "KITCHEN", title: "Small Kitchen", imageName: "kitchen01.png", price: "$2000"),
        Product(parentCategory: "KITCHEN", title: "Big Kitchen", imageName: "kitchen02.png", price: "$20.000"),
        Product(parentCategory: "HOUSE", title: "Small House", imageName: "house01.png", price: "$250.000"),
        Product(parentCategory: "HOUSE", title: "Medium House", imageName: "house02.png", price: "$500.000"),
        Product(parentCategory: "HOUSE", title: "Big House", imageName: "house03.png", price: "$1.000.000"),
        Product(parentCategory: "GARDEN", title: "Green Garden", imageName: "garden01.png", price: "$15.000"),
        Product(parentCategory: "GARDEN", title: "Flower Garden", imageName: "garden02.png", price: "$30.000")
    ]
    
    func getCategories() -> [Category]{
        return categories
    }
    
    func getProducts(forCategory: Category) -> [Product] {
        let SelectedProducts = products.filter { (eenProduct) -> Bool in
            return eenProduct.parentCategory == forCategory.title
        }
        return SelectedProducts
    }
    
}
