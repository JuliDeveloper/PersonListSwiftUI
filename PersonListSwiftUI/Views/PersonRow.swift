//
//  PersonRow.swift
//  PersonListSwiftUI
//
//  Created by Julia Romanenko on 18.09.2022.
//

import SwiftUI

struct PersonRow: View {
    
    let person: Person
    
    var body: some View {
        HStack {
            Text("\(person.fullName)")
            Spacer()
        }
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(person: Person.getPerson().first ?? Person(id: 10, name: "", lastname: "", phone: "", email: ""))
    }
}
