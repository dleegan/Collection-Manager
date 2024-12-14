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
        VStack(spacing: 20) {
            ImageView(imageUrl: book.imagesURL)
                .clipShape(
                    RoundedRectangle(cornerRadius: 10)
                )

            VStack {
                Text(book.name)
                    .bold()
                    .font(.title)

                Text(book.author)
                    .foregroundStyle(.primary)
            }

            Spacer()
        }
        .padding(.horizontal)
        .toolbar(.hidden, for: .tabBar)
    }
}

#Preview {
    BookDetailsView(book: PreviewBooksItems[0])
}
