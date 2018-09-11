//
//  TableViewCell3Image.swift
//  CustomUITableViewCells
//
//  Created by CPU11613 on 9/6/18.
//  Copyright © 2018 CPU11613. All rights reserved.
//

import UIKit

class TableViewCell3Image: UITableViewCell {

    var cell3Image: Cell3Image? {
        didSet {
            title.text = cell3Image?.title
            image1.image = cell3Image?.image1
            image2.image = cell3Image?.image2
            image3.image = cell3Image?.image3
            source.text = cell3Image?.source
        }
    }
    
    let title: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textAlignment = .left
        return label
    } ()
    
    let image1: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "yellow200x150"))
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let image2: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "red200x150"))
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let image3: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "blue200x150"))
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let source: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 12)
        label.textAlignment = .left
        return label
    } ()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(title)
        addSubview(image1)
        addSubview(image2)
        addSubview(image3)
        addSubview(source)
        
        title.translatesAutoresizingMaskIntoConstraints = false
        image1.translatesAutoresizingMaskIntoConstraints = false
        image2.translatesAutoresizingMaskIntoConstraints = false
        image3.translatesAutoresizingMaskIntoConstraints = false
        source.translatesAutoresizingMaskIntoConstraints = false
        
        title.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        title.heightAnchor.constraint(lessThanOrEqualTo:heightAnchor, multiplier: 1/3).isActive = true
        title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        title.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        
        image1.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 10).isActive = true
        image1.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        image1.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/3, constant: -10).isActive = true
        image1.heightAnchor.constraint(equalTo: image1.widthAnchor, multiplier: 0.75).isActive = true
        
        image2.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 10).isActive = true
        image2.leadingAnchor.constraint(equalTo: image1.trailingAnchor, constant: 5).isActive = true
        image2.widthAnchor.constraint(equalTo: image1.widthAnchor).isActive = true
        image2.heightAnchor.constraint(equalTo: image1.heightAnchor).isActive = true
        
        image3.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 10).isActive = true
        image3.leadingAnchor.constraint(equalTo: image2.trailingAnchor, constant: 5).isActive = true
        image3.widthAnchor.constraint(equalTo: image1.widthAnchor).isActive = true
        image3.heightAnchor.constraint(equalTo: image1.heightAnchor).isActive = true
        
        source.topAnchor.constraint(equalTo: image1.bottomAnchor, constant: 10).isActive = true
        source.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        source.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        source.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
