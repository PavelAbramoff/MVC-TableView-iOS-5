//
//  ContactTableViewCell.swift
//  MVC-TableView-iOS-5
//
//  Created by Pavel Абрамов on 14.07.2022.
//
// struct Model {
//    let imageCell: String name
//    let textCell: String  jobeTitle


import UIKit

class ModelTableViewCell: UITableViewCell {

    var model: Model? {
        didSet {
            guard let modelItem = model else {return}
            if let imageCell = modelItem.imageCell {
                profileImageView.image = UIImage(named: imageCell)
                nameLabel.text = imageCell
            }
            if let textCell = modelItem.textCell {
                textCellDetailedLabel.text = "\(textCell)"
            }
        }
    }
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        return view
    }()
    
    let profileImageView: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.translatesAutoresizingMaskIntoConstraints = false
        img.layer.cornerRadius = 35
        img.clipsToBounds = true
        return img
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let textCellDetailedLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .white
        label.backgroundColor = .blue
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    
        self.containerView.addSubview(profileImageView)
        containerView.addSubview(nameLabel)
        containerView.addSubview(textCellDetailedLabel)
        self.containerView.addSubview(containerView)
    
        profileImageView.centerYAnchor.constraint(equalTo:self.contentView
            .centerYAnchor).isActive = true
        profileImageView.leadingAnchor.constraint(equalTo: self.contentView
            .leadingAnchor, constant:10).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        containerView.centerYAnchor.constraint(equalTo:self.contentView
            .centerYAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo:self.profileImageView
            .trailingAnchor, constant:10).isActive = true
        containerView.trailingAnchor.constraint(equalTo:self.contentView
            .trailingAnchor, constant:-10).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        nameLabel.topAnchor.constraint(equalTo:self.containerView.topAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo:self.containerView.leadingAnchor)
            .isActive = true
        nameLabel.trailingAnchor.constraint(equalTo:self.containerView.trailingAnchor)
            .isActive = true
        
        textCellDetailedLabel.topAnchor.constraint(equalTo:self.nameLabel
            .bottomAnchor).isActive = true
        textCellDetailedLabel.leadingAnchor.constraint(equalTo:self.containerView
            .leadingAnchor).isActive = true
        textCellDetailedLabel.topAnchor.constraint(equalTo:self.nameLabel
            .bottomAnchor).isActive = true
        textCellDetailedLabel.leadingAnchor.constraint(equalTo:self.containerView
            .leadingAnchor).isActive = true
        }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
    }
}

