//
//  CoreGamelanApp.swift
//  CoreGamelan
//
//  Created by cleanmac-ada on 18/04/22.
//

import SwiftUI

@main
struct CoreBonangApp: App {
    @UIApplicationDelegateAdaptor var appDelegate: AppDelegate
    
    var body: some Scene {
        WindowGroup {
            RootVC()
        }
    }
}
