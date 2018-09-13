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
    let image1URL: String!
    let image2URL: String!
    let image3URL: String!
    
    init(title: String, source: String, image1URL: String, image2URL: String, image3URL: String) {
        self.title = title
        self.source = source
        self.image1URL = image1URL
        self.image2URL = image2URL
        self.image3URL = image3URL
    }
}
