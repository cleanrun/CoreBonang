//
//  HomeVC.swift
//  CoreBonang
//
//  Created by cleanmac-ada on 18/04/22.
//

import UIKit

class AboutGamelanVC: UIViewController {
    
    private var tableView: UITableView!
    
    init() {
        super.init(nibName: nil, bundle: nil)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func commonInit() {
        tableView = UITableView(frame: .zero, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
        ])
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ImageCell.self, forCellReuseIdentifier: "ImageCell")
        tableView.register(TextCell.self, forCellReuseIdentifier: "TextCell")
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
        tableView.rowHeight = UITableView.automaticDimension
        tableView.showsVerticalScrollIndicator = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "About Gamelan"
    }
}

extension AboutGamelanVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        7
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = indexPath.section
        switch section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell") as! ImageCell
            cell.setContents(imageName: AssetName.IMG_GAMELAN_1, detailText: CreditLink.CREDIT_GAMELAN_1)
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextCell") as! TextCell
            cell.setText(detailText: AboutGamelanDetails.ORIGINS_TITLE, font: .boldSystemFont(ofSize: 20))
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextCell") as! TextCell
            cell.setText(detailText: AboutGamelanDetails.ORIGINS_DETAIL)
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextCell") as! TextCell
            cell.setText(detailText: AboutGamelanDetails.YOGYAKARTA_TITLE, font: .boldSystemFont(ofSize: 20))
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextCell") as! TextCell
            cell.setText(detailText: AboutGamelanDetails.YOGYAKARTA_DETAIL)
            return cell
        case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextCell") as! TextCell
            cell.setText(detailText: AboutGamelanDetails.PALACE_TITLE, font: .boldSystemFont(ofSize: 20))
            return cell
        case 6:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextCell") as! TextCell
            cell.setText(detailText: AboutGamelanDetails.PALACE_DETAIL)
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
}
