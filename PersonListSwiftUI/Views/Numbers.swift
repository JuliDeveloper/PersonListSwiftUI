//
//  Numbers.swift
//  PersonListSwiftUI
//
//  Created by Julia Romanenko on 18.09.2022.
//

import SwiftUI

struct Numbers: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(persons) { person in
                    Section(header: Text("\(person.fullName)")) {
                        Label("\(person.phone)", systemImage: "phone.fill")
                        Label("\(person.email)", systemImage: "tray.fill")
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}


struct SectionsPersonList_Previews: PreviewProvider {
    static var previews: some View {
        Numbers(persons: Person.getPerson())
    }
}
