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

}
//==========================================================================

