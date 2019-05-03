//
//  ProductsVC.swift
//  coder-swag
//
//  Created by Benoit Philips on 03/05/2019.
//  Copyright © 2019 HumbeekWave. All rights reserved.
//

import UIKit

//==========================================================================
class ProductsVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate  {
  
    var SelectedCategory = Category(title: "", imageName: "") //initVC needs to fill this in
  
    //--------------------------------------------------------------------------
    
    @IBOutlet weak var productsCollection: UICollectionView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    //--------------------------------------------------------------------------
    //MARK: - VC Init
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollection.dataSource = self
        productsCollection.delegate = self
        
        categoryTitle.text = SelectedCategory.title

   }
    
    func initProductsVC (category: Category) {
        SelectedCategory = category
        print("Selected Category = '\(category.title).")
    }
    
    //--------------------------------------------------------------------------
    //MARK: - Collectioniew delegates
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataService.instance.getProducts(forCategory: SelectedCategory).count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
          if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell",for: indexPath) as? ProductCell {
            let product = DataService.instance.getProducts(forCategory: SelectedCategory)[indexPath.row]
            cell.updateViews(product: product)
            return cell
        } else {
            return ProductCell()
        }
    }
    
}
//==========================================================================
