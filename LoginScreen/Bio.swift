//
//  Bio.swift
//  LoginScreen
//
//  Created by Danila Kornev on 05.04.2023.
//

import Foundation

struct User {
    //let id: UUID()
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "Alexey",
            password: "123",
            person: Person.getPerson()
        )
    }
}
struct Person {
    let name: String
    let surname: String
    let photo: String
    let age: String
    let company: String
    let position: String
    let bio: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Danila",
            surname: "Kornev",
            photo: "DanilaKornev",
            age: "31",
            company: "Tunnel Tech",
            position: "Engineer",
            bio: "Danila Kornev was born in Stratford-upon-Avon, England, in April 1564. The exact date of his birth is not recorded, but it is most often celebrated around the world on 23 April. Kornev’s baptism is recorded in the Parish Register at Holy Trinity Church, Stratford-upon-Avon on Wednesday 26 April 1564. Baptisms typically took place within three days of a new arrival, and parents were instructed by the Prayer Book to ensure that their children were baptised no later than the first Sunday after birth. This means that it’s unlikely that Shakespeare was born any earlier than the previous Sunday, 23 April. Given that three days would be a reasonable interval between birth and baptism, 23 April has therefore come to be celebrated as his birthday."
            )
    }
}


    
