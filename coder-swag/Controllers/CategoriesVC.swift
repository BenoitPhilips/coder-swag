//
//  ViewController.swift
//  coder-swag
//
//  Created by Benoit Philips on 02/05/2019.
//  Copyright © 2019 HumbeekWave. All rights reserved.
//

import UIKit

//==========================================================================
class CategoriesVC : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //--------------------------------------------------------------------------
 
    @IBOutlet weak var categoryTable: UITableView!
    
    //--------------------------------------------------------------------------
    //MARK: - VC Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    //--------------------------------------------------------------------------
    //MARK: - tableview delegates
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell()
        }
     }
    
    //--------------------------------------------------------------------------

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "GoToProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            assert(sender as? Category != nil) // crash application if we did not receive a Category from PerformSegue
            productsVC.initProductsVC(category: sender as! Category)
        }
    }
}
//==========================================================================

