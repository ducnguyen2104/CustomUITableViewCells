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
        tableView.separatorInset = UIEdgeInsetsMake(0, 10, 0, 10);
        initCellData()
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.register(TableViewCell1Image.self, forCellReuseIdentifier: cellId1)
        tableView.register(TableViewCell3Image.self, forCellReuseIdentifier: cellId3)
        
    }
    
    private func initCellData() {
        arrayOfCellData = [
            Cell1Image(title: "Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1", source: "Source", image1: #imageLiteral(resourceName: "yellow200x150")),
            Cell1Image(title: "Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1", source: "Source", image1: #imageLiteral(resourceName: "red200x150")),
            Cell1Image(title: "Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1", source: "Source", image1: #imageLiteral(resourceName: "blue200x150")),
            Cell3Image(title: "Title 3", source: "Source", image1: #imageLiteral(resourceName: "yellow200x150"), image2: #imageLiteral(resourceName: "red200x150"), image3: #imageLiteral(resourceName: "blue200x150")),
            Cell1Image(title: "Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1 Title 1", source: "Source", image1: #imageLiteral(resourceName: "red200x150")),
            Cell3Image(title: "Title 3", source: "Source", image1: #imageLiteral(resourceName: "red200x150"), image2: #imageLiteral(resourceName: "red200x150"), image3: #imageLiteral(resourceName: "blue200x150")),
            Cell3Image(title: "Title 3", source: "Source", image1: #imageLiteral(resourceName: "yellow200x150"), image2: #imageLiteral(resourceName: "red200x150"), image3: #imageLiteral(resourceName: "blue200x150")),
            Cell1Image(title: "Title 1", source: "Source", image1: #imageLiteral(resourceName: "red200x150")),
            Cell1Image(title: "Title 1", source: "Source", image1: #imageLiteral(resourceName: "blue200x150")),
            Cell3Image(title: "Title 3", source: "Source", image1: #imageLiteral(resourceName: "yellow200x150"), image2: #imageLiteral(resourceName: "red200x150"), image3: #imageLiteral(resourceName: "yellow200x150")),
        ]
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
            cell.title.text = (arrayOfCellData[indexPath.row] as! Cell3Image).title
            cell.image1.image = (arrayOfCellData[indexPath.row] as! Cell3Image).image1
            cell.image2.image = (arrayOfCellData[indexPath.row] as! Cell3Image).image2
            cell.image3.image = (arrayOfCellData[indexPath.row] as! Cell3Image).image3
            cell.source.text = (arrayOfCellData[indexPath.row] as! Cell3Image).source
            return cell
        }
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if arrayOfCellData[indexPath.row] is Cell1Image {
            let titleHeight = heightForView(text: (arrayOfCellData[indexPath.row] as! Cell1Image).title, font: UIFont.boldSystemFont(ofSize: 16), width: view.frame.width*2/3 - 20)
            let sourceHeight = heightForView(text: (arrayOfCellData[indexPath.row] as! Cell1Image).source, font: UIFont.systemFont(ofSize: 12), width: view.frame.width*2/3 - 20)
            let imageHeight = (view.frame.width/3 - 10)*0.75
            return max(titleHeight + sourceHeight + 30, imageHeight + 20)
        }
        else {
            let titleHeight = heightForView(text: (arrayOfCellData[indexPath.row] as! Cell3Image).title, font: UIFont.boldSystemFont(ofSize: 16), width: view.frame.width - 20)
            let sourceHeight = heightForView(text: (arrayOfCellData[indexPath.row] as! Cell1Image).source, font: UIFont.systemFont(ofSize: 12), width: view.frame.width - 20)
            let imageHeight = (view.frame.width/3 - 10)*0.75
            return titleHeight + sourceHeight + imageHeight + 40
        }
    }
    
    func heightForView(text:String, font:UIFont, width:CGFloat) -> CGFloat{
        let label:UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: CGFloat.greatestFiniteMagnitude))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.font = font
        label.text = text
        label.sizeToFit()
        return label.frame.height
    }
    
}

