//
//  BookItemView.swift
//  Collection Manager
//
//  Created by dleegan on 11/12/2024.
//

import SwiftUI

struct BookItemView: View {
    let book: CollectibleItem

    var body: some View {
        HStack(spacing: 20) {
            ImageView(imageUrl: book.imagesURL)
                .frame(width: 80, height: 80)
                .clipShape(
                    RoundedRectangle(cornerRadius: 10)
                )

            VStack(alignment: .leading) {
                Text(book.name)
                    .bold()
                    .font(.title3)
                Text("de \(book.author)")
                    .font(.caption2)
            }
        }
        .frame(
            maxWidth: .infinity,
            alignment: .leading
        )
    }
}

#Preview {
    BookItemView(
        book: PreviewBooksItems[0]
    )
    .padding()
}
