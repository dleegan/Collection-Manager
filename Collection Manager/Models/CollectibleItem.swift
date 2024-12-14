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
    let wearAndTear: String
    let categoryId: Int
    let startDate: Date?
    let endDate: Date?
    let tags: [String]?
}

let PreviewBooksItems: [CollectibleItem] = [
    .init(
        imagesURL: "https://m.media-amazon.com/images/I/81NruMA7N9L._SL800_.jpg?w=3840&q=70",
        name: "Si elle savait",
        author: "Blake Pierce",
        price: 5.99,
        actualPage: 10,
        numberOfPages: 250,
        purchaseDate: Date(),
        wearAndTear: "String",
        categoryId: 0,
        startDate: nil,
        endDate: nil,
        tags: nil
    ),
]
