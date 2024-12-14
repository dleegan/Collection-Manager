//
//  NewBookView.swift
//  Collection Manager
//
//  Created by dleegan on 12/12/2024.
//

import SwiftUI

struct NewBookView: View {
    @Environment(\.dismiss) var dismiss

    @Binding var myBooks: [CollectibleItem]

    @State private var name: String = ""
    @State private var imageURL: String = ""
    @State private var price: String = ""
    @State private var purchaseDate: Date = .init()
    @State private var categoryId: Int = -1

    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .font(.title3)
                        .foregroundStyle(.gray)
                }
            }
            .frame(maxWidth: .infinity, alignment: .trailing)

            ImageView(imageUrl: imageURL)
                .frame(height: 300)

            TextField(text: $imageURL) {
                Text("Image (URL) du livre")
            }
            .textFieldStyle(.roundedBorder)

            TextField(text: $name) {
                Text("Nom de livre")
            }
            .textFieldStyle(.roundedBorder)

            HStack {
                TextField(text: $price) {
                    Text("Prix du livre")
                }
                .textFieldStyle(.roundedBorder)
                Text("€")
            }

            DatePicker(
                selection: $purchaseDate,
                displayedComponents: .date
            ) {
                Text("Date d'achat:")
            }

            HStack {
                Text("Category:")
                Spacer()
                Picker(selection: $categoryId) {
                    ForEach(bookCategories) { category in
                        Label(category.name, systemImage: category.icon)
                            .tag(category.id)
                    }
                } label: {
                    Text("Categorie")
                }
            }

            Spacer()
        }
        .padding()
        .overlay {
            VStack {
                Button {
                    myBooks.append(
                        CollectibleItem(
                            imagesURL: imageURL,
                            name: name,
                            author: "",
                            price: 5.99,
                            actualPage: 10,
                            numberOfPages: 250,
                            purchaseDate: purchaseDate,
                            wearAndTear: "String",
                            categoryId: categoryId,
                            startDate: nil,
                            endDate: nil,
                            tags: nil
                        )
                    )
                    dismiss()
                } label: {
                    Text("Ajouter")
                }
                .bold()
                .foregroundStyle(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.blue)
                )
            }
            .padding(.horizontal)
            .frame(maxHeight: .infinity, alignment: .bottom)
        }
    }
}

#Preview {
    @Previewable @State var myBooks: [CollectibleItem] = PreviewBooksItems
    NewBookView(myBooks: $myBooks)
}
