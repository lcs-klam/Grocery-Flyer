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
                    name: "Sirloin Tip Oven Roasts",
                    image: "sirloin-tips",
                    price: "$3",
                    quantity: 2,
                    measurement: "lbs"
                ),
                FoodItem(
                    name: "Porkloin Back Ribs",
                    image: "porkloin-back-ribs",
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
                    name: "Wild Pacific Halibut Fillets",
                    image: "wild-pacific-halibut-fillets",
                    price: "$3",
                    quantity: 2,
                    measurement: "lbs"
                ),
                FoodItem(
                    name: "Wild Sockeye Salmon Fillets",
                    image: "wild-sockeye-salmon-fillets",
                    price: "$3",
                    quantity: 2,
                    measurement: "lbs"
                ),
                FoodItem(
                    name: "Clam Chowder",
                    image: "clam-chowder",
                    price: "$3",
                    quantity: 2,
                    measurement: "lbs"
                ),
            ]
        ),
        
        
    ]
)
    
