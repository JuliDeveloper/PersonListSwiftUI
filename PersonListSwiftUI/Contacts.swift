//
//  Contacts.swift
//  PersonListSwiftUI
//
//  Created by Julia Romanenko on 18.09.2022.
//

import SwiftUI

struct Contacts: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                PersonRow(person: person)
            }
            .listStyle(.inset)
            .navigationTitle("Contact List")
        }
    }
}

struct PersonList_Previews: PreviewProvider {
    static var previews: some View {
        Contacts(persons: Person.getPerson())
    }
}
