//
//  Cell3Image.swift
//  CustomUITableViewCells
//
//  Created by CPU11613 on 9/6/18.
//  Copyright © 2018 CPU11613. All rights reserved.
//

import Foundation
import UIKit

class Cell3Image: CellData {
    let title: String!
    let source: String!
    let image1: UIImage!
    let image2: UIImage!
    let image3: UIImage!
    
    init(title: String, source: String, image1: UIImage, image2: UIImage, image3: UIImage) {
        self.title = title
        self.source = source
        self.image1 = image1
        self.image2 = image2
        self.image3 = image3
    }
}
