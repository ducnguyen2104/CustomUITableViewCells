//
//  Cell1Image.swift
//  CustomUITableViewCells
//
//  Created by CPU11613 on 9/6/18.
//  Copyright © 2018 CPU11613. All rights reserved.
//

import Foundation
import UIKit

class Cell1Image: CellData {
    let title: String!
    let source: String!
    let image1: UIImage!
    
    init(title: String, source: String, image1: UIImage) {
        self.title = title
        self.source = source
        self.image1 = image1
    }
}
