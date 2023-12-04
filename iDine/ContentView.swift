//
//  ContentView.swift
//  iDine
//
//  Created by Celery Liu on 2023/12/3.
//

import SwiftUI

struct ContentView: View {
    let menu: [MenuSection] = Bundle.main.decode([MenuSection].self, from: "menu.json")

    var body: some View {
        NavigationStack {
            List {
                ForEach(menu) { section in
                    Section(section.name) {
                        ForEach(section.items) { item in
                            NavigationLink(value: item) {
                                ItemRow(item: item)
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: MenuItem.self) { item in
                ItemDetail(item: item)
            }
            .navigationTitle("Menu")
        }
    }
}

#Preview {
    ContentView()
}
