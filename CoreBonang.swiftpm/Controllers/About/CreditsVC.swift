//
//  CreditsVC.swift
//  CoreBonang
//
//  Created by cleanmac-ada on 22/04/22.
//

import UIKit

class CreditsVC: UITableViewController {

    override init(style: UITableView.Style) {
        super.init(style: style)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Credits"
    }
    
    private func openSourceURL(_ string: String) {
        if let url = URL(string: string) {
            UIApplication.shared.open(url)
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        6
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 2
        case 1:
            return 1
        case 2:
            return 2
        case 3:
            return 1
        case 4:
            return 1
        case 5:
            return 1
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        var content = cell.defaultContentConfiguration()
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                content.text = "Wikipedia"
                cell.accessoryType = .disclosureIndicator
            case 1:
                content.text = "AsiaSound"
                cell.accessoryType = .disclosureIndicator
            default:
                break
            }
        case 1:
            switch indexPath.row {
            case 0:
                content.text = "AsiaSound"
                cell.accessoryType = .disclosureIndicator
            default:
                break
            }
        case 2:
            switch indexPath.row {
            case 0:
                content.text = "Wikipedia"
                cell.accessoryType = .disclosureIndicator
            case 1:
                content.text = "Instruments of the world"
                cell.accessoryType = .disclosureIndicator
            default:
                break
            }
        case 3:
            switch indexPath.row {
            case 0:
                content.text = "National Music Museum, University of South Dakota"
                cell.accessoryType = .disclosureIndicator
            default:
                break
            }
        case 4:
            switch indexPath.row {
            case 0:
                content.text = "Bonang Barung by harizqis in BlendSwap"
            default:
                break
            }
        case 5:
            switch indexPath.row {
            case 0:
                content.text = "Provided by Digitopia_CdM in freesound.org"
            default:
                break
            }
        default:
            break
        }
        cell.contentConfiguration = content
        cell.selectionStyle = .blue
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "About Indonesian Instruments"
        case 1:
            return "About Gamelan"
        case 2:
            return "About Bonang"
        case 3:
            return "2D Assets"
        case 4:
            return "AR 3D Model"
        case 5:
            return "Bonang Sounds"
        default:
            return ""
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                openSourceURL(CreditLink.WIKIPEDIA_MUSIC_OF_INDONESIA)
            case 1:
                openSourceURL(CreditLink.ASIASOUND)
            default:
                break
            }
        case 1:
            switch indexPath.row {
            case 0:
                openSourceURL(CreditLink.ASIASOUND)
            default:
                break
            }
        case 2:
            switch indexPath.row {
            case 0:
                openSourceURL(CreditLink.WIKIPEDIA_BONANG)
            case 1:
                openSourceURL(CreditLink.INSTRUMENTS_OF_THE_WORLD)
            default:
                break
            }
        case 3:
            switch indexPath.row {
            case 0:
                openSourceURL(CreditLink.NMMUSD)
            default:
                break
            }
        default:
            break
        }
    }
}
