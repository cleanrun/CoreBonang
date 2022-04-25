//
//  ContainerSplitVC.swift
//  CoreBonang
//
//  Created by cleanmac-ada on 18/04/22.
//

import UIKit

class ContainerSplitVC: UISplitViewController {
    
    private var primaryNavigationController: UINavigationController!
    private var secondaryNavigationController: UINavigationController!
    
    init() {
        super.init(style: .doubleColumn)
        let sideMenuVc = SideMenuVC(style: .insetGrouped)
        sideMenuVc.delegate = self
        primaryNavigationController = UINavigationController(rootViewController: sideMenuVc)
        primaryNavigationController.view.backgroundColor = .systemBackground
        secondaryNavigationController = UINavigationController(rootViewController: AboutIndonesianMusicVC())
        secondaryNavigationController.view.backgroundColor = .systemBackground
        viewControllers = [primaryNavigationController, secondaryNavigationController]
        preferredDisplayMode = .oneBesideSecondary
        presentsWithGesture = false
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func changeSecondaryViewController(_ vc: UIViewController) {
        secondaryNavigationController.setViewControllers([vc], animated: false)
    }
}

extension ContainerSplitVC: SideMenuDelegate {
    func didSelectMenuItem(at indexPath: IndexPath) {
        let vc: UIViewController?
        
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                vc = AboutIndonesianMusicVC()
            case 1:
                vc = AboutGamelanVC()
            case 2:
                vc = AboutBonangVC()
            default:
                vc = nil
            }
        case 1:
            switch indexPath.row {
            case 0:
                vc = Bonang2DVC()
            case 1:
                vc = BonangARVC()
            default:
                vc = nil
            }
        case 2:
            switch indexPath.row {
            case 0:
                vc = CreditsVC(style: .insetGrouped)
            default:
                vc = nil
            }
        default:
            vc = nil
        }
        
        if let vc = vc {
            changeSecondaryViewController(vc)
        }
    }
}
