//
//  CategoryItem.swift
//  Collection Manager
//
//  Created by dleegan on 11/12/2024.
//

import SwiftUI

struct CategoryItem: Identifiable {
    let id: Int
    let name: String
    let icon: String
    let color: Color
}

let bookCategories: [CategoryItem] = [
    CategoryItem(id: 0, name: "BD et mangas", icon: "book.closed.fill", color: .orange),
    CategoryItem(id: 1, name: "Biographies et mémoires", icon: "person.fill", color: .blue),
    CategoryItem(id: 2, name: "Cuisine et vin", icon: "fork.knife", color: .purple),
    CategoryItem(id: 3, name: "Éducation", icon: "graduationcap.fill", color: .red),
    CategoryItem(id: 4, name: "Enfants", icon: "figure.and.child.holdinghands", color: .green),
    CategoryItem(id: 5, name: "Essais et sciences humaines", icon: "brain.head.profile", color: .indigo),
    CategoryItem(id: 6, name: "Histoire", icon: "building.columns.fill", color: .brown),
    CategoryItem(id: 7, name: "Informatique et Internet", icon: "desktopcomputer", color: .cyan),
    CategoryItem(id: 8, name: "Jeunes adultes", icon: "person.2.fill", color: .pink),
    CategoryItem(id: 9, name: "Policier et suspense", icon: "magnifyingglass", color: .gray),
    CategoryItem(id: 10, name: "Religion et spiritualité", icon: "leaf.fill", color: .mint),
    CategoryItem(id: 11, name: "Romance", icon: "heart.fill", color: .red),
    CategoryItem(id: 12, name: "Romans et littérature", icon: "book.fill", color: .purple),
    CategoryItem(id: 13, name: "Santé et bien-être", icon: "heart.circle.fill", color: .green),
    CategoryItem(id: 14, name: "SF et fantasy", icon: "sparkles", color: .blue),
    CategoryItem(id: 15, name: "Tourisme et voyages", icon: "airplane", color: .orange)
]
