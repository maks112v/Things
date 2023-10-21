//
//  ThingsApp.swift
//  Things
//
//  Created by Maksim Vakarchuk on 10/21/23.
//

import FirebaseCore
import SwiftUI

@main
struct ThingsApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
