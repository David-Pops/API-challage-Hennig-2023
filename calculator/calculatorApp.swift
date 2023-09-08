//
//  calculatorApp.swift
//  calculator
//
//  Created by David Popowski on 9/8/23.
//

import SwiftUI

@main
struct calculatorApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
