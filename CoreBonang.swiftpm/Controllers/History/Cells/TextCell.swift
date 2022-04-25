//
//  TextCell.swift
//  CoreBonang
//
//  Created by cleanmac-ada on 23/04/22.
//

import UIKit

class TextCell: UITableViewCell {
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
        
        detailLabel = UILabel()
        detailLabel.translatesAutoresizingMaskIntoConstraints = false
        detailLabel.numberOfLines = 0
        contentView.addSubview(detailLabel)
        NSLayoutConstraint.activate([
            detailLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            detailLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            detailLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            detailLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
        ])
    }
    
    func setText(detailText: String) {
        detailLabel.font = .preferredFont(forTextStyle: .body)
        detailLabel.text = detailText
    }
    
    func setText(detailText: String, font: UIFont) {
        detailLabel.font = font
        detailLabel.text = detailText
    }

}
