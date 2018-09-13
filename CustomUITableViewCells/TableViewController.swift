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
        addCell1Image(title: "Thêm 3 bị can bị bắt trong vụ truy sát tại quán nhậu ở Huế", source: "PLO", image1URL: "https://baomoi-photo-1-td.zadn.vn/w300_r3x2/2018_09_13_114_27705780/4bda362586626f3c3673.jpg")
        addCell1Image(title: "Chạy thận làm 9 người chết: Những sai phạm của ông Trương Quý Dương", source: "Tiền Phong", image1URL: "https://baomoi-photo-2-td.zadn.vn/w300_r3x2/2018_09_13_20_27705988/2d5d55a1e5e60cb855f7.jpg")
        addCell1Image(title: "9 cơn bão xuất hiện cùng lúc, chuyên gia cảnh báo điểm 'bất thường'", source: "NLĐ", image1URL: "https://baomoi-photo-1-td.zadn.vn/w300_r3x2/2018_09_13_15_27702312/713ffe1f4958a006f949.jpg")
        addCell3Image(title: "Người chồng nghi giết vợ ở Tiền Giang bị bắt khi trên đường chạy trốn", source: "VOV", image1URL: "https://baomoi-photo-2-td.zadn.vn/w300_r4x3/2018_09_13_65_27706231/24e7e3135354ba0ae345.jpg", image2URL: "https://baomoi-photo-2-td.zadn.vn/w300_r4x3/2018_09_13_65_27706231/2c61e89558d2b18ce8c3.jpg", image3URL: "https://baomoi-photo-2-td.zadn.vn/w300_r4x3/2018_09_13_65_27706231/e3cc2138917f7821216e.jpg")
        addCell1Image(title: "Bà giữ xe làm CMND siêu tốc", source: "NLĐ", image1URL: "https://baomoi-photo-1-td.zadn.vn/w300_r3x2/2018_09_13_15_27698508/4634d95d6e1a8744de0b.jpg")
        addCell1Image(title: "Cuộc đối thoại đặc biệt của Thủ tướng tại hội nghị Thượng đỉnh Kinh doanh Việt Nam", source: "VietnamNet", image1URL: "https://baomoi-photo-1-td.zadn.vn/w300_r3x2/2018_09_13_23_27706089/02e97e1dce5a27047e4b.jpg")
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
        addCell1Image(title: "Thêm 3 bị can bị bắt trong vụ truy sát tại quán nhậu ở Huế", source: "PLO", image1URL: "https://baomoi-photo-1-td.zadn.vn/w300_r3x2/2018_09_13_114_27705780/4bda362586626f3c3673.jpg")
        addCell1Image(title: "Chạy thận làm 9 người chết: Những sai phạm của ông Trương Quý Dương", source: "Tiền Phong", image1URL: "https://baomoi-photo-2-td.zadn.vn/w300_r3x2/2018_09_13_20_27705988/2d5d55a1e5e60cb855f7.jpg")
        addCell1Image(title: "9 cơn bão xuất hiện cùng lúc, chuyên gia cảnh báo điểm 'bất thường'", source: "NLĐ", image1URL: "https://baomoi-photo-1-td.zadn.vn/w300_r3x2/2018_09_13_15_27702312/713ffe1f4958a006f949.jpg")
        addCell3Image(title: "Người chồng nghi giết vợ ở Tiền Giang bị bắt khi trên đường chạy trốn", source: "VOV", image1URL: "https://baomoi-photo-2-td.zadn.vn/w300_r4x3/2018_09_13_65_27706231/24e7e3135354ba0ae345.jpg", image2URL: "https://baomoi-photo-2-td.zadn.vn/w300_r4x3/2018_09_13_65_27706231/2c61e89558d2b18ce8c3.jpg", image3URL: "https://baomoi-photo-2-td.zadn.vn/w300_r4x3/2018_09_13_65_27706231/e3cc2138917f7821216e.jpg")
        addCell1Image(title: "Bà giữ xe làm CMND siêu tốc", source: "NLĐ", image1URL: "https://baomoi-photo-1-td.zadn.vn/w300_r3x2/2018_09_13_15_27698508/4634d95d6e1a8744de0b.jpg")
        addCell1Image(title: "Cuộc đối thoại đặc biệt của Thủ tướng tại hội nghị Thượng đỉnh Kinh doanh Việt Nam", source: "VietnamNet", image1URL: "https://baomoi-photo-1-td.zadn.vn/w300_r3x2/2018_09_13_23_27706089/02e97e1dce5a27047e4b.jpg")
    }
    
    func addCell1Image(title: String, source: String, image1URL: String) {
        arrayOfCellData.append(Cell1Image(title: title, source: source, image1URL: image1URL))
    }
    
    func addCell3Image(title: String, source: String, image1URL: String, image2URL: String, image3URL: String) {
        arrayOfCellData.append(Cell3Image(title: title, source: source, image1URL: image1URL, image2URL: image2URL, image3URL: image3URL))
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayOfCellData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if arrayOfCellData[indexPath.row] is Cell1Image {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: cellId1, for: indexPath) as! TableViewCell1Image
            let url = URL(string: (arrayOfCellData[indexPath.row] as! Cell1Image).image1URL)!
            cell.image1.kf.setImage(with: url, options: [.forceRefresh])
            cell.title.text = (arrayOfCellData[indexPath.row] as! Cell1Image).title
            cell.source.text = (arrayOfCellData[indexPath.row] as! Cell1Image).source
            
            return cell
        }
            
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: cellId3, for: indexPath) as! TableViewCell3Image
            cell.title.text = (arrayOfCellData[indexPath.row] as! Cell3Image).title
            let url1 = URL(string: (arrayOfCellData[indexPath.row] as! Cell3Image).image1URL)!
            let url2 = URL(string: (arrayOfCellData[indexPath.row] as! Cell3Image).image2URL)!
            let url3 = URL(string: (arrayOfCellData[indexPath.row] as! Cell3Image).image3URL)!
            cell.image1.kf.setImage(with: url1, options: [.forceRefresh])
            cell.image2.kf.setImage(with: url2, options: [.forceRefresh])
            cell.image3.kf.setImage(with: url3, options: [.forceRefresh])
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

