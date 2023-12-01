//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

class Data {
    static func getFruits() -> [Item] {
        return [
            Item(name: "Avocado", imageName: "Avocado"),
            Item(name: "Banana", imageName: "Banana"),
            Item(name: "Blackberries", imageName: "Blackberries"),
            Item(name: "Cherry", imageName: "Cherry"),
            Item(name: "Coconut", imageName: "Coconut"),
            Item(name: "Kiwi", imageName: "Kiwi"),
            Item(name: "Lemon", imageName: "Lemon"),
            Item(name: "Lime", imageName: "Lime"),
            Item(name: "Mango", imageName: "Mango"),
            Item(name: "Mangosteen", imageName: "Mangosteen"),
            Item(name: "Orange", imageName: "Orange"),
            Item(name: "Peach", imageName: "Peach"),
            Item(name: "Pineapple", imageName: "Pineapple"),
            Item(name: "Prune", imageName: "Prune"),
            Item(name: "Raspberry", imageName: "Raspberry")
        ]
    }
    
    static func getContacts() -> [Item] {
        return [
            Item(name: "Jaqueline Cruz", imageName: "profile"),
            Item(name: "Rachel Hernandez", imageName: "profile2"),
            Item(name: "Tony Sanders", imageName: "profile3"),
            Item(name: "Pablo Breda", imageName: "profile4"),
            Item(name: "Trisha Werner", imageName: "profile5"),
            Item(name: "Patrick Blumenthal", imageName: "profile6"),
            Item(name: "Courtney Rennar", imageName: "profile7"),
            Item(name: "Rodrigo Liberal", imageName: "profile8"),
            Item(name: "Mary Smith", imageName: "profile9"),
            Item(name: "Nadir Gadban", imageName: "profile10"),
            Item(name: "Rosella Vasquez", imageName: "profile11"),
            Item(name: "Brutus Elgado", imageName: "profile12"),
            Item(name: "Stephanie Bartlett", imageName: "profile13"),
            Item(name: "Henrietta Sofia", imageName: "profile14")
        ]
    }
    
    static func getPlaces() -> [Place] {
        return [
            Place(city: "Neuschwanstein", country: "Germany", rating: 5),
            Place(city: "Lengfeld", country: "Germany", rating: 5),
            Place(city: "Oberhof", country: "Germany", rating: 4),
            Place(city: "Brogen", country: "Germany", rating: 4)
        ]
    }
    
    static func getCategories() -> [Category] {
        return [
            Category(category: "Fun Money", detail: "Movies, drinks, games..."),
            Category(category: "Groceries", detail: "Fruits, meats, vegetables..."),
            Category(category: "Shopping", detail: "Clothes, shoes, household items..."),
            Category(category: "Education", detail: "University, books, courses..."),
            Category(category: "Utilities", detail: "Internet, electric, gas, water..."),
            Category(category: "Travel", detail: "Flights, hotel, rental car..."),
            Category(category: "Health", detail: "Doctor, dentist, gym..."),
            Category(category: "Restaurant", detail: "Dining out..."),
            Category(category: "Debt", detail: "Loans, credit cards, auto loan..."),
            Category(category: "Housing", detail: "Rental, mortgage..."),
            Category(category: "Miscellaneous", detail: "Anything you can't find a category for..."),
            Category(category: "Insurance", detail: "Health, auto, home...")
        ]
    }
    
    static func getSongs() -> [Song] {
        return [
            Song(name: "The Puppets Dream", duration: "4:11"),
            Song(name: "Sid Vortex", duration: "2:35"),
            Song(name: "Solitude", duration: "3:26"),
            Song(name: "Insomnia", duration: "3:25"),
            Song(name: "Impulse", duration: "3:13"),
            Song(name: "Check One", duration: "1:15"),
            Song(name: "Find Me", duration: "4:01"),
            Song(name: "Check Two", duration: "1:34"),
            Song(name: "Being Human", duration: "5:01"),
            Song(name: "Gravity", duration: "5:09")
        ]
    }
}

struct Item: Identifiable {
    let id = UUID()
    var name = ""
    var imageName = ""
}

struct Place: Identifiable {
    let id = UUID()
    var city: String
    var country: String
    var rating = 0
}

struct Category: Identifiable {
    let id = UUID()
    var category: String
    var detail = ""
}

struct Song: Identifiable {
    let id = UUID()
    var name = ""
    var duration = ""
}
