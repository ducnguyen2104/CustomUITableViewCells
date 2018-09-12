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
        
        addCell1Image(title: "Thế giới di động độc quyền SIM dung lượng data 5 GB mỗi ngày", source: "Vietnamobile", image1URL: "https://baomoi-photo-atm.zadn.vn/w300_r4x3/adtima-media-td.zadn.vn/2018/09/c2d2f4ca-3f7a-413a-8f91-f02537d9c7ea.jpg")
        addCell1Image(title: "Học sinh Trường Thực nghiệm lên tiếng: 'Chúng em tự hào về GS Hồ Ngọc Đại'", source: "Lao Động", image1URL: "https://baomoi-photo-3-td.zadn.vn/w300_r3x2/2018/09/12/12/27686798/69634.jpg")
        addCell1Image(title: "Có gì hấp dẫn ở iPhone XC, iPhone XS sắp được ra mắt?", source: "VietnamNet", image1URL: "https://baomoi-photo-3-td.zadn.vn/w300_r3x2/2018/09/12/23/27690203/117052.jpg")
        addCell3Image(title: "Rò rỉ hình ảnh smartphone giá rẻ iPhone XC trước giờ ra mắt", source: "VTC", image1URL: "https://baomoi-photo-3-td.zadn.vn/w300_r4x3/2018/09/12/83/27693416/1_24695.jpg", image2URL: "https://baomoi-photo-3-td.zadn.vn/w300_r4x3/2018/09/12/83/27693416/0_18358.jpg", image3URL: "https://baomoi-photo-3-td.zadn.vn/w300_r4x3_sm/2018/09/12/83/27693416/3_45654.jpg")
        addCell1Image(title: "Thế giới di động độc quyền SIM dung lượng data 5 GB mỗi ngày", source: "Vietnamobile", image1URL: "https://baomoi-photo-atm.zadn.vn/w300_r4x3/adtima-media-td.zadn.vn/2018/09/c2d2f4ca-3f7a-413a-8f91-f02537d9c7ea.jpg")
        addCell1Image(title: "Học sinh Trường Thực nghiệm lên tiếng: 'Chúng em tự hào về GS Hồ Ngọc Đại'", source: "Lao Động", image1URL: "https://baomoi-photo-3-td.zadn.vn/w300_r3x2/2018/09/12/12/27686798/69634.jpg")
        addCell1Image(title: "Có gì hấp dẫn ở iPhone XC, iPhone XS sắp được ra mắt?", source: "VietnamNet", image1URL: "https://baomoi-photo-3-td.zadn.vn/w300_r3x2/2018/09/12/23/27690203/117052.jpg")
        addCell3Image(title: "Rò rỉ hình ảnh smartphone giá rẻ iPhone XC trước giờ ra mắt", source: "VTC", image1URL: "https://baomoi-photo-3-td.zadn.vn/w300_r4x3/2018/09/12/83/27693416/1_24695.jpg", image2URL: "https://baomoi-photo-3-td.zadn.vn/w300_r4x3/2018/09/12/83/27693416/0_18358.jpg", image3URL: "https://baomoi-photo-3-td.zadn.vn/w300_r4x3_sm/2018/09/12/83/27693416/3_45654.jpg")
        addCell1Image(title: "Thế giới di động độc quyền SIM dung lượng data 5 GB mỗi ngày", source: "Vietnamobile", image1URL: "https://baomoi-photo-atm.zadn.vn/w300_r4x3/adtima-media-td.zadn.vn/2018/09/c2d2f4ca-3f7a-413a-8f91-f02537d9c7ea.jpg")
        addCell1Image(title: "Học sinh Trường Thực nghiệm lên tiếng: 'Chúng em tự hào về GS Hồ Ngọc Đại'", source: "Lao Động", image1URL: "https://baomoi-photo-3-td.zadn.vn/w300_r3x2/2018/09/12/12/27686798/69634.jpg")
        addCell1Image(title: "Có gì hấp dẫn ở iPhone XC, iPhone XS sắp được ra mắt?", source: "VietnamNet", image1URL: "https://baomoi-photo-3-td.zadn.vn/w300_r3x2/2018/09/12/23/27690203/117052.jpg")
        addCell3Image(title: "Rò rỉ hình ảnh smartphone giá rẻ iPhone XC trước giờ ra mắt", source: "VTC", image1URL: "https://baomoi-photo-3-td.zadn.vn/w300_r4x3/2018/09/12/83/27693416/1_24695.jpg", image2URL: "https://baomoi-photo-3-td.zadn.vn/w300_r4x3/2018/09/12/83/27693416/0_18358.jpg", image3URL: "https://baomoi-photo-3-td.zadn.vn/w300_r4x3_sm/2018/09/12/83/27693416/3_45654.jpg")
        addCell1Image(title: "Thế giới di động độc quyền SIM dung lượng data 5 GB mỗi ngày", source: "Vietnamobile", image1URL: "https://baomoi-photo-atm.zadn.vn/w300_r4x3/adtima-media-td.zadn.vn/2018/09/c2d2f4ca-3f7a-413a-8f91-f02537d9c7ea.jpg")
        addCell1Image(title: "Học sinh Trường Thực nghiệm lên tiếng: 'Chúng em tự hào về GS Hồ Ngọc Đại'", source: "Lao Động", image1URL: "https://baomoi-photo-3-td.zadn.vn/w300_r3x2/2018/09/12/12/27686798/69634.jpg")
        addCell1Image(title: "Có gì hấp dẫn ở iPhone XC, iPhone XS sắp được ra mắt?", source: "VietnamNet", image1URL: "https://baomoi-photo-3-td.zadn.vn/w300_r3x2/2018/09/12/23/27690203/117052.jpg")
        addCell3Image(title: "Rò rỉ hình ảnh smartphone giá rẻ iPhone XC trước giờ ra mắt", source: "VTC", image1URL: "https://baomoi-photo-3-td.zadn.vn/w300_r4x3/2018/09/12/83/27693416/1_24695.jpg", image2URL: "https://baomoi-photo-3-td.zadn.vn/w300_r4x3/2018/09/12/83/27693416/0_18358.jpg", image3URL: "https://baomoi-photo-3-td.zadn.vn/w300_r4x3_sm/2018/09/12/83/27693416/3_45654.jpg")
    }
    
    func addCell1Image(title: String, source: String, image1URL: String) {
        do {
            let url = URL(string: image1URL)
            let data = try Data(contentsOf: url!)
            arrayOfCellData.append(Cell1Image(title: title, source: source, image1: UIImage(data: data)!))
        }
        catch {
            print(error)
        }
    }
    
    func addCell3Image(title: String, source: String, image1URL: String, image2URL: String, image3URL: String) {
        do {
            let url1 = URL(string: image1URL)
            let data1 = try Data(contentsOf: url1!)
            let url2 = URL(string: image2URL)
            let data2 = try Data(contentsOf: url2!)
            let url3 = URL(string: image3URL)
            let data3 = try Data(contentsOf: url3!)
            arrayOfCellData.append(Cell3Image(title: title, source: source, image1: UIImage(data: data1)!, image2: UIImage(data: data2)!, image3: UIImage(data: data3)!))
        }
        catch {
            print(error)
        }
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
            let sourceHeight = heightForView(text: (arrayOfCellData[indexPath.row] as! Cell3Image).source, font: UIFont.systemFont(ofSize: 12), width: view.frame.width - 20)
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

