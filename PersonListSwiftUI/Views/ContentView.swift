//
//  ContentView.swift
//  PersonListSwiftUI
//
//  Created by Julia Romanenko on 18.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let persons = Person.getPerson()
    
    var body: some View {
        TabView {
            Contacts(persons: persons)
                .tabItem {
                    Label("Contacts", systemImage: "person.3.fill")
                }
            Numbers(persons: persons)
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
