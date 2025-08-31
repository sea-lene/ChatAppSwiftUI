//
//  ChatAppApp.swift
//  ChatApp
//
//  Created by Suhanee on 31/08/25.
//

import SwiftUI

@main
struct ChatAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
