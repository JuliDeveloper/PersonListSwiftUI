//
//  PersonInformation.swift
//  PersonListSwiftUI
//
//  Created by Julia Romanenko on 18.09.2022.
//

import SwiftUI

struct PersonInformation: View {
    
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 200, height: 200)
                Spacer()
            }
            .padding()
            Label("\(person.phone)", systemImage: "phone.fill")
            Label("\(person.email)", systemImage: "tray.fill")
        }
        .navigationTitle("\(person.fullName)")
    }
}

struct PersonInformation_Previews: PreviewProvider {
    static var previews: some View {
        PersonInformation(person: Person(id: 5, name: "Julia", lastname: "Rom", phone: "4050943941", email: "ncdsjncs@ndckn.com"))
    }
}
