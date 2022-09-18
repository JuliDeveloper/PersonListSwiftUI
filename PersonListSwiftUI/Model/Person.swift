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
        
        let names = dataPerson.names.shuffled()
        let lastnames = dataPerson.lastnames.shuffled()
        let phones = dataPerson.phones.shuffled()
        let emails = dataPerson.emails.shuffled()
        
        let count = min(dataPerson.names.count,
                        dataPerson.lastnames.count,
                        dataPerson.phones.count,
                        dataPerson.emails.count)
        
        for index in 0..<count {
            
            persons.append(Person(id: Int.random(in: 1...100),
                                  name: names[index],
                                  lastname: lastnames[index],
                                  phone: phones[index],
                                  email: emails[index]))
        }
        
        return persons
    }
}
