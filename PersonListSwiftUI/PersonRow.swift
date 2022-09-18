//
//  PersonRow.swift
//  PersonListSwiftUI
//
//  Created by Julia Romanenko on 18.09.2022.
//

import SwiftUI

struct PersonRow: View {
    
    var person: Person
    private var fullNamePerson: String {
        person.fullName
    }
    
    var body: some View {
        HStack {
            Text("\(fullNamePerson)")
            Spacer()
        }
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(person: Person.getPerson().first ?? Person(id: 10, name: "", lastname: "", phone: "", email: ""))
    }
}
