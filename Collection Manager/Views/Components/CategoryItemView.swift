//
//  CategoryItemView.swift
//  Collection Manager
//
//  Created by dleegan on 14/12/2024.
//

import SwiftUI

struct CategoryItemView: View {
    let category: CategoryItem

    var body: some View {
        HStack {
            Image(systemName: category.icon)
            Text(category.name)
        }
        .font(.caption2)
        .bold()
        .padding(10)
        .foregroundStyle(.white)
        .background(
            RoundedRectangle(cornerRadius: 50)
                .foregroundStyle(category.color)
        )
//        if selelected?.contains(category.id) {
//            HStack {
//                Image(systemName: category.icon)
//                Text(category.name)
//            }
//            .font(.caption2)
//            .bold()
//            .padding(10)
//            .foregroundStyle(.white)
//            .background(
//                RoundedRectangle(cornerRadius: 50)
//                    .foregroundStyle(category.color)
//            )
//        }
//
//        else {
//            HStack {
//                Image(systemName: category.icon)
//                Text(category.name)
//            }
//            .font(.caption2)
//            .bold()
//            .padding(10)
//            .foregroundStyle(.white)
//            .background(
//                RoundedRectangle(cornerRadius: 50)
//                    .stroke(category.color, lineWidth: 2)
//            )
//        }
    }
}

#Preview {
    CategoryItemView(category: bookCategories[9])
}
