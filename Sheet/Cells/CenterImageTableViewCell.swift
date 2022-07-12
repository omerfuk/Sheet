//
//  CenterImageTableViewCell.swift
//  Sheet
//
//  Created by Ömer Faruk Kılıçaslan on 12.07.2022.
//

import UIKit

class CenterImageTableViewCell: UITableViewCell {

    static let identifier = "CenterImageTableViewCell"
    
    private let myImageView: UIImageView = {
        
        let imageView = UIImageView()
        return imageView
        
    }()
    
    private let myLabel: UILabel = {
        
        let label = UILabel()
        return label
        
    }()
    
    public func configure() {
        contentView.addSubview(myLabel)
        contentView.addSubview(myImageView)
        
        myImageView.clipsToBounds = true
        myImageView.layer.masksToBounds = true
        myImageView.layer.cornerRadius = 50.0
        myImageView.image = UIImage(named: "image1")
        
        myLabel.text = "It works, i am centered"
        myLabel.textAlignment = .center
        
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        myImageView.frame = CGRect(x: 5, y: 5, width: 100, height: 100)
        myLabel.frame = CGRect(x: 105, y: 5, width: contentView.frame.size.width - 110, height: 100)
        
    }
    
    

}
