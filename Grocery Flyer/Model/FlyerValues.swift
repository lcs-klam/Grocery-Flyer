//
//  FlyerValues.swift
//  Grocery Flyer
//
//  Created by Kevin Lam on 5/2/2025.
//

import Foundation

struct Flyer {
    let departments: [Department]
}
 
struct Department: Identifiable {
    let id = UUID()
    let name: String
    let items: [FoodItem]
}
 
struct FoodItem: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let price: String
    let quantity: Int
    let measurement: String
}

let thisWeeksFlyer = Flyer(
    
    departments: [
        
        Department(
            name: "Butcher's Best",
            items: [
                FoodItem(
                    name: "Sirloin",
                    image: "Sirloin",
                    price: "$3",
                    quantity: 2,
                    measurement: "lbs"
                ),
                FoodItem(
                    name: "Ribs",
                    image: "Ribs",
                    price: "$3",
                    quantity: 2,
                    measurement: "lbs"
                ),
            ]
        ),
 
        Department(
            name: "Seafood",
            items: [
                FoodItem(
                    name: "Halibut Fillets",
                    image: "Halibut",
                    price: "$3",
                    quantity: 2,
                    measurement: "lbs"
                ),
                FoodItem(
                    name: "Salmon Fillets",
                    image: "Salmon",
                    price: "$3",
                    quantity: 2,
                    measurement: "lbs"
                ),
                FoodItem(
                    name: "Clam Chowder",
                    image: "chowder",
                    price: "$3",
                    quantity: 2,
                    measurement: "lbs"
                ),
            ]
        ),
        
        
    ]
)
    
