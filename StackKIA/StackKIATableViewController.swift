//
//  StackKIATableViewController.swift
//  StackKIA
//
//  Created by Student on 26/02/2019.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class StackKIATableViewController: UITableViewController {

    var referenceModel: [ReferenceModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return referenceModels.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        
        let referenceModel = ReferenceModel[index]
        
        cell.textLabel?.text = "Ряд \(index)"
        cell.detailTextLabel?.text = ReferenceModel.detail
        cell.imageView?.image = ReferenceModel.image
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88
    }
    
}
