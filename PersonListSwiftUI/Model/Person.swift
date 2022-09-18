//
//  Person.swift
//  PersonListSwiftUI
//
//  Created by Julia Romanenko on 18.09.2022.
//

import Foundation

struct Person: Identifiable {
    
    let id: Int
    let name: String
    let lastname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(lastname)"
    }
}
    
extension Person {
    static func getPerson() -> [Person] {
        
        let dataPerson = DataManager()
        
        var persons: [Person] = []
        
        let count = min(dataPerson.names.count,
                        dataPerson.lastnames.count,
                        dataPerson.phones.count,
                        dataPerson.emails.count)
        
        for _ in 0..<count {
            let name = dataPerson.names.randomElement() ?? ""
            let lastname = dataPerson.lastnames.randomElement() ?? ""
            let phone = dataPerson.phones.randomElement() ?? ""
            let email = dataPerson.emails.randomElement() ?? ""
            
            persons.append(Person(id: Int.random(in: 1...100),
                                  name: name,
                                  lastname: lastname,
                                  phone: phone,
                                  email: email))
        }
        
        return persons
    }
}
