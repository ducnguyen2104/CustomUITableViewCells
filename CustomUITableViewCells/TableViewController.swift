//
//  ViewController.swift
//  CustomUITableViewCells
//
//  Created by CPU11613 on 9/5/18.
//  Copyright © 2018 CPU11613. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    let cellId1 = "CellId1"
    let cellId3 = "CellId3"
    var arrayOfCellData = [CellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayOfCellData = [
            Cell1Image(title: "Title 1", source: "Source", image1: #imageLiteral(resourceName: "yellow200x150")),
            Cell1Image(title: "Title 1", source: "Source", image1: #imageLiteral(resourceName: "red200x150")),
            Cell1Image(title: "Title 1", source: "Source", image1: #imageLiteral(resourceName: "blue200x150")),
            /*Cell3Image(title: "Title 3", source: "Source", image1: #imageLiteral(resourceName: "yellow200x150"), image2: #imageLiteral(resourceName: "red200x150"), image3: #imageLiteral(resourceName: "blue200x150"))*/
        ]
        tableView.register(TableViewCell1Image.self, forCellReuseIdentifier: cellId1)
        tableView.register(TableViewCell3Image.self, forCellReuseIdentifier: cellId3)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayOfCellData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if arrayOfCellData[indexPath.row] is Cell1Image {
        
            let cell = tableView.dequeueReusableCell(withIdentifier: cellId1, for: indexPath) as! TableViewCell1Image
            cell.image1.image = (arrayOfCellData[indexPath.row] as! Cell1Image).image1
            cell.title.text = (arrayOfCellData[indexPath.row] as! Cell1Image).title
            cell.source.text = (arrayOfCellData[indexPath.row] as! Cell1Image).source
            return cell
        }
        
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: cellId3, for: indexPath) as! TableViewCell3Image
            cell.image1.image = (arrayOfCellData[indexPath.row] as! Cell3Image).image1
            cell.image2.image = (arrayOfCellData[indexPath.row] as! Cell3Image).image2
            cell.image3.image = (arrayOfCellData[indexPath.row] as! Cell3Image).image3
            cell.title.text = (arrayOfCellData[indexPath.row] as! Cell3Image).title
            cell.source.text = (arrayOfCellData[indexPath.row] as! Cell3Image).source
            return cell
        }
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if arrayOfCellData[indexPath.row] is Cell1Image {
            return (view.frame.width - 40)/3 + 20
        }
        else {
            return (view.frame.width - 40)/3 + 120
        }
    }
}

