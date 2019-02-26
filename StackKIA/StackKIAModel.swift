//
//  StackKIAModel.swift
//  StackKIA
//
//  Created by Student on 26/02/2019.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

struct ReferenceModel {
    
    static let name = "Змеи"
    
    var image: UIImage?
    var title: String
    var detail: String
    
    static func load() -> [ReferenceModel] {
        
        return [
            ReferenceModel(image: <#T##UIImage?#>,
                          title: <#T##String#>,
                          detail: <#T##String#>),
            ReferenceModel(image: UIImage(named: "snek2"),
                          title: "Snek2",
                          detail: "Very snek"),
            ReferenceModel(image: <#T##UIImage?#>,
                          title: <#T##String#>,
                          detail: <#T##String#>),
            ReferenceModel(image: <#T##UIImage?#>,
                          title: <#T##String#>,
                          detail: <#T##String#>),
            ReferenceModel(image: <#T##UIImage?#>,
                          title: <#T##String#>,
                          detail: <#T##String#>),
        ]
        
    }
    
}
