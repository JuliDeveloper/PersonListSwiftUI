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
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let lastnames = DataManager.shared.lastnames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        let count = min(DataManager.shared.names.count,
                        DataManager.shared.lastnames.count,
                        DataManager.shared.phones.count,
                        DataManager.shared.emails.count)
        
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
