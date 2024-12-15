//
//  FormatItem.swift
//  Collection Manager
//
//  Created by dleegan on 14/12/2024.
//

import Foundation

struct FormatItem: Identifiable {
    let id: Int
    let name: String
    let icon: String
}

let bookFormats: [FormatItem] = [
    FormatItem(id: 0, name: "Digital", icon: "iphone.gen2.circle"),
    FormatItem(id: 1, name: "Physique", icon: "book.closed.circle"),
    FormatItem(id: 2, name: "Audio", icon: "headphones.circle"),
]
