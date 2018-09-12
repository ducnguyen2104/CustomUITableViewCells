//
//  TableViewCell1Image.swift
//  CustomUITableViewCells
//
//  Created by CPU11613 on 9/5/18.
//  Copyright © 2018 CPU11613. All rights reserved.
//

import UIKit

class TableViewCell1Image: UITableViewCell {
    
    var cell1Image: Cell1Image? {
        didSet {
            title.text = cell1Image?.title
            image1.image = cell1Image?.image1
            source.text = cell1Image?.source
        }
    }
    
    let title: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textAlignment = .justified
        label.numberOfLines = 0
//        label.backgroundColor = .green
        return label
    } ()
    
    let image1: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "yellow200x150"))
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let source: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 12)
        label.textAlignment = .left
//        label.backgroundColor = .cyan
        return label
    } ()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(title)
        addSubview(image1)
        addSubview(source)
        
//        backgroundColor = .yellow
        
        title.translatesAutoresizingMaskIntoConstraints = false
        image1.translatesAutoresizingMaskIntoConstraints = false
        source.translatesAutoresizingMaskIntoConstraints = false
        
        image1.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        image1.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        image1.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/3, constant: -10).isActive = true
        image1.heightAnchor.constraint(equalTo: image1.widthAnchor, multiplier: 0.75).isActive = true
        
        title.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        title.leadingAnchor.constraint(equalTo: image1.trailingAnchor, constant: 10).isActive = true
        title.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        title.bottomAnchor.constraint(equalTo: source.topAnchor, constant: 10)
        
        source.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        source.heightAnchor.constraint(lessThanOrEqualTo: heightAnchor, multiplier: 0.2)
        source.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        source.widthAnchor.constraint(equalTo: title.widthAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
