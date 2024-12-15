//
//  BookDetailsView.swift
//  Collection Manager
//
//  Created by dleegan on 12/12/2024.
//

import SwiftUI

struct BookDetailsView: View {
    let book: CollectibleItem

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ImageView(imageUrl: book.imagesURL)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 10)
                    )
                    .frame(width: 200, height: 300)

                VStack {
                    Text(book.name)
                        .bold()
                        .font(.title)
                        .multilineTextAlignment(.center)

                    Text(book.author)
                        .bold()
                        .underline()
                        .foregroundStyle(.secondary)
                }

                CategoryItemView(category: getCategory)

                HStack {
                    Text("Information d'achat:")
                        .bold()
                    Spacer()
                    Label(getFormat.name, systemImage: getFormat.icon)
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                VStack(alignment: .leading) {
                    Text("Format du livre:")
                        .bold()
                    Text("Vous avez acheté ce livre (au format **\(getFormat.name.lowercased())**), le \(book.purchaseDate.formatted(date: .numeric, time: .omitted)) à **\(displayedPrice) €**.")
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                Spacer()
            }
            .padding(.horizontal)
            .toolbar(.hidden, for: .tabBar)
        }
    }

    var displayedPrice: String {
        String(format: "%.2f", book.price)
    }

    var getCategory: CategoryItem {
        bookCategories.first(where: { category in
            category.id == book.categoryId
        }) ?? bookCategories[0]
    }

    var getFormat: FormatItem {
        bookFormats.first(where: { format in
            format.id == book.formatId
        }) ?? bookFormats[0]
    }
}

#Preview {
    BookDetailsView(book: PreviewBooksItems[7])
}
