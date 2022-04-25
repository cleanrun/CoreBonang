//
//  ImageCell.swift
//  CoreBonang
//
//  Created by cleanmac-ada on 23/04/22.
//

import UIKit

class ImageCell: UITableViewCell {
    private var containerImage: UIImageView!
    private var detailLabel: UILabel!

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func commonInit() {
        backgroundColor = .clear
        
        containerImage = UIImageView()
        containerImage.translatesAutoresizingMaskIntoConstraints = false
        containerImage.clipsToBounds = true
        containerImage.contentMode = .scaleAspectFill
        contentView.addSubview(containerImage)
        NSLayoutConstraint.activate([
            containerImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            containerImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            containerImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            containerImage.heightAnchor.constraint(equalToConstant: 250)
        ])
        
        detailLabel = UILabel()
        detailLabel.translatesAutoresizingMaskIntoConstraints = false
        detailLabel.font = .preferredFont(forTextStyle: .caption1)
        detailLabel.textAlignment = .right
        detailLabel.numberOfLines = 1
        contentView.addSubview(detailLabel)
        NSLayoutConstraint.activate([
            detailLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            detailLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            detailLabel.topAnchor.constraint(equalTo: containerImage.bottomAnchor, constant: 4),
            detailLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -4),
        ])
    }
    
    func setContents(imageName: String, detailText: String) {
        containerImage.image = UIImage(named: imageName)
        detailLabel.text = detailText
    }

}
