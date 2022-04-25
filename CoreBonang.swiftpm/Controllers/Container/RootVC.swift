//
//  ContainerNavigationController.swift
//  CoreBonang
//
//  Created by cleanmac-ada on 18/04/22.
//

import UIKit
import SwiftUI

struct RootVC: UIViewControllerRepresentable {
    typealias UIViewControllerType = ContainerSplitVC

    func makeUIViewController(context: Context) -> UIViewControllerType {
        return ContainerSplitVC()
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        // Do something here
    }
}
