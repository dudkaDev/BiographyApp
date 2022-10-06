//
//  Data.swift
//  BiographyApp
//
//  Created by Андрей Абакумов on 05.10.2022.
//

import Foundation

struct User {
    let userName: String
    let password: String
    let userInformation: Person
    
    init(
        userName: String = "Admin",
        password: String = "Admin",
        userInformation: Person
    ) {
        self.userName = userName
        self.password = password
        self.userInformation = userInformation
    }
}

struct Person {
    let name: String
    let surename: String
    let age: Int
    let location: String
    let userBiography: String
    
    static func getUserData() -> Person {
        Person(
            name: "Andrey",
            surename: "Abakumov",
            age: 24,
            location: "Saratov, Russia",
            userBiography: "На часах 4:20 утра, дедлайн уже давно позади. Но задачу в итоге я выполнил. Надеюсь, что буду близок к правильному решению 😁 Один глаз уже закрыт, поэтому вместо биографии просто напишу несколько фактов о себе. Родился и вырос в городе Саратов. После школы поступил в медицинский университет и успешно бросил его, занявшись видеосъёмкой. Спустя несколько лет поймал творческое выгорание и полное отсутствие желания продолжать заниматься коммерческой съемкой. Дальше депрессия, поиск нового интереса в каком либо деле, и вот я на вашем курсе. 🤓" 
        )
    }
}



