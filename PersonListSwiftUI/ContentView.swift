//
//  ContentView.swift
//  PersonListSwiftUI
//
//  Created by Julia Romanenko on 18.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Contacts()
                .tabItem {
                    Label("Contacts", systemImage: "person.3.fill")
                }
            Numbers()
                .tabItem {
                    Label("Numbers", systemImage: "phone.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
