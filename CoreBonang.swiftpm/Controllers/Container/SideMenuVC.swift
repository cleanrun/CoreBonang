//
//  SideMenuVC.swift
//  CoreBonang
//
//  Created by cleanmac-ada on 18/04/22.
//

import UIKit

protocol SideMenuDelegate: AnyObject {
    func didSelectMenuItem(at indexPath: IndexPath)
}

class SideMenuVC: UITableViewController {
    
    weak var delegate: SideMenuDelegate?
    
    private let menuList: [[String]] = [
        [
            "About Indonesian Music",
            "About Gamelan",
            "About Bonang"
        ],
        [
            "2D",
            "AR"
        ],
        [
            "Credits"
        ]
    ]
    
    override init(style: UITableView.Style) {
        super.init(style: style)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = "CoreBonang"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .automatic
        navigationController?.navigationBar.sizeToFit()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.selectRow(at: IndexPath(row: 0, section: 0), animated: false, scrollPosition: .none)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        menuList[section].count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "History"
        case 1:
            return "Demo"
        default:
            return nil
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        var content = cell.defaultContentConfiguration()
        content.text = menuList[indexPath.section][indexPath.row]
        cell.contentConfiguration = content
        cell.selectionStyle = .blue
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.didSelectMenuItem(at: indexPath)
    }
}
