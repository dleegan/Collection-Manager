//
//  CollectibleItem.swift
//  Collection Manager
//
//  Created by dleegan on 11/12/2024.
//

import Foundation

struct CollectibleItem: Identifiable {
    let id = UUID()
    let imagesURL: String
    let name: String
    let author: String
    let price: Float
    let actualPage: Int
    let numberOfPages: Int
    let purchaseDate: Date
    let categoryId: Int
    let formatId: Int
    let startDate: Date?
    let endDate: Date?
    let tags: [String]?
}

let PreviewBooksItems: [CollectibleItem] = [
    CollectibleItem(
        imagesURL: "https://m.media-amazon.com/images/I/71uYkW+TV6L._UF1000,1000_QL80_.jpg",
        name: "Si elle savait",
        author: "Blake Pierce",
        price: 5.99,
        actualPage: 10,
        numberOfPages: 250,
        purchaseDate: Date(),
        categoryId: 9,
        formatId: 0,
        startDate: nil,
        endDate: nil,
        tags: nil
    ),
    CollectibleItem(
        imagesURL: "https://m.media-amazon.com/images/I/81yNw+nly+L._UF1000,1000_QL80_.jpg?w=3840&q=70",
        name: "Si elle voyait",
        author: "Blake Pierce",
        price: 5.99,
        actualPage: 0,
        numberOfPages: 260,
        purchaseDate: Date(),
        categoryId: 9,
        formatId: 0,
        startDate: nil,
        endDate: nil,
        tags: ["thriller", "mystère", "FBI"]
    ),
    CollectibleItem(
        imagesURL: "https://m.media-amazon.com/images/I/71cAr3lM20L._UF1000,1000_QL80_.jpg",
        name: "Si elle courait",
        author: "Blake Pierce",
        price: 5.99,
        actualPage: 0,
        numberOfPages: 270,
        purchaseDate: Date(),
        categoryId: 9,
        formatId: 0,
        startDate: nil,
        endDate: nil,
        tags: ["thriller", "mystère", "FBI"]
    ),
    CollectibleItem(
        imagesURL: "https://m.media-amazon.com/images/I/71yewi4bOFL._UF1000,1000_QL80_.jpg",
        name: "Si elle se cachait",
        author: "Blake Pierce",
        price: 5.99,
        actualPage: 0,
        numberOfPages: 270,
        purchaseDate: Date(),
        categoryId: 9,
        formatId: 0,
        startDate: nil,
        endDate: nil,
        tags: ["thriller", "mystère", "FBI"]
    ),
    CollectibleItem(
        imagesURL: "https://m.media-amazon.com/images/I/71UFYIaLleL._UF1000,1000_QL80_.jpg",
        name: "Si elle s’enfuyait",
        author: "Blake Pierce",
        price: 5.99,
        actualPage: 0,
        numberOfPages: 270,
        purchaseDate: Date(),
        categoryId: 9,
        formatId: 0,
        startDate: nil,
        endDate: nil,
        tags: ["thriller", "mystère", "FBI"]
    ),
    CollectibleItem(
        imagesURL: "https://m.media-amazon.com/images/I/81HIO9QPl+L._UF1000,1000_QL80_.jpg",
        name: "Si elle craignait",
        author: "Blake Pierce",
        price: 5.99,
        actualPage: 0,
        numberOfPages: 270,
        purchaseDate: Date(),
        categoryId: 9,
        formatId: 0,
        startDate: nil,
        endDate: nil,
        tags: ["thriller", "mystère", "FBI"]
    ),
    CollectibleItem(
        imagesURL: "https://m.media-amazon.com/images/I/71QZI0CUQOL._UF1000,1000_QL80_.jpg",
        name: "Si elle entendait",
        author: "Blake Pierce",
        price: 5.99,
        actualPage: 0,
        numberOfPages: 270,
        purchaseDate: Date(),
        categoryId: 9,
        formatId: 0,
        startDate: nil,
        endDate: nil,
        tags: ["thriller", "mystère", "FBI"]
    ),
    CollectibleItem(
        imagesURL: "https://gallmeister.fr/assets/couvertures/couv-1000/635.jpg",
        name: "Wayward Pines Épisode 1 : Révélation",
        author: "Blake Crouch",
        price: 5.99,
        actualPage: 0,
        numberOfPages: 270,
        purchaseDate: Date(),
        categoryId: 14,
        formatId: 1,
        startDate: nil,
        endDate: nil,
        tags: ["thriller", "mystère", "FBI"]
    )
]
