//
//  StackKIATableViewController.swift
//  StackKIA
//
//  Created by Student on 26/02/2019.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class ReferenceTableViewController: UITableViewController {
    
    var referenceModels: [ReferenceModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = ReferenceModel.name
        
        referenceModels = ReferenceModel.load()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return referenceModels.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        
        let referenceModel = referenceModels[index]
        
        cell.textLabel?.text = referenceModel.title
        cell.detailTextLabel?.text = referenceModel.detail
        cell.imageView?.image = referenceModel.image
        
        cell.detailTextLabel?.numberOfLines = 5
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}
