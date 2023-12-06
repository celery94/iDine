//
//  iDineApp.swift
//  iDine
//
//  Created by Celery Liu on 2023/12/3.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()

    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
