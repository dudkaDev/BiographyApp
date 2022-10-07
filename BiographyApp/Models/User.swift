//
//  Data.swift
//  BiographyApp
//
//  Created by Андрей Абакумов on 05.10.2022.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "Admin",
            password: "Admin",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let photo: String
    let name: String
    let surname: String
    let age: Int
    let location: String
    let bio: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            photo: "ava inst",
            name: "Andrey",
            surname: "Abakumov",
            age: 24,
            location: "Saratov, Russia",
            bio: "На часах 4:20 утра, дедлайн уже давно позади. Но задачу в итоге я выполнил. Надеюсь, что буду близок к правильному решению 😁 Один глаз уже закрыт, поэтому вместо биографии просто напишу несколько фактов о себе. Родился и вырос в городе Саратов. После школы поступил в медицинский университет и успешно бросил его, занявшись видеосъёмкой. Спустя несколько лет поймал творческое выгорание и полное отсутствие желания продолжать заниматься коммерческой съемкой. Дальше депрессия, поиск нового интереса в каком либо деле, и вот я на вашем курсе. 🤓"
        )
    }
}



