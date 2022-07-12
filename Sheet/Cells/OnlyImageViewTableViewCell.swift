//
//  OnlyImageViewTableViewCell.swift
//  Sheet
//
//  Created by Ömer Faruk Kılıçaslan on 12.07.2022.
//

import UIKit

class OnlyImageViewTableViewCell: UITableViewCell {

    static let identifier = "OnlyImageViewTableViewCell"
    
    private let myImageView: UIImageView = {
        
        let imageView = UIImageView()
        return imageView
        
    }()
    
    
    public func configure() {
        
        contentView.addSubview(myImageView)
        
        myImageView.clipsToBounds = true
        myImageView.layer.masksToBounds = true
        myImageView.layer.cornerRadius = 50.0
        myImageView.image = UIImage(named: "image2")
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = CGRect(x: contentView.frame.size.width / 2, y: 3, width: 100, height: 100)
    }
}
