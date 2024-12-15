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
    @State private var author: String = ""
    @State private var imageURL: String = ""
    @State private var price: Float = 0.0
    @State private var purchaseDate: Date = .init()
    @State private var categoryId: Int = -1
    @State private var formatId: Int = -1

    var body: some View {
        ScrollView {
            Spacer(minLength: 20)
            VStack(spacing: 20) {
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
                
                TextField(text: $author) {
                    Text("Nom de l'auteur")
                }
                .textFieldStyle(.roundedBorder)
                
                HStack {
                    TextField("Prix du livre", value: $price, format: .number)
                        .textFieldStyle(.roundedBorder)
                    Text("€")
                }
                
                DatePicker(
                    selection: $purchaseDate,
                    displayedComponents: .date
                ) {
                    Text("Date d'achat:")
                        .bold()
                }
                
                HStack {
                    Text("Category:")
                        .bold()
                    Spacer()
                    Picker(selection: $categoryId) {
                        ForEach(bookCategories) { category in
                            Label(category.name, systemImage: category.icon)
                                .tag(category.id)
                        }
                    } label: {
                        Text("Categorie")
                            .bold()
                    }
                }
                
                HStack {
                    Text("Format du livre:")
                        .bold()
                    Spacer()
                    Picker(selection: $formatId) {
                        ForEach(bookFormats) { format in
                            Label(format.name, systemImage: format.icon)
                                .tag(format.id)
                        }
                    } label: {
                        Text("Categorie")
                            .bold()
                    }
                }
                
                Spacer()
            }
            .padding()
        }
        .overlay {
            VStack {
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
                Spacer()
                Button {
                    addNewBook()
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
            .padding(.top)
            .frame(maxHeight: .infinity)
        }
    }
    
    private func addNewBook() {
        myBooks.append(
            CollectibleItem(
                imagesURL: imageURL,
                name: name,
                author: author,
                price: price,
                actualPage: 0,
                numberOfPages: 250,
                purchaseDate: purchaseDate,
                categoryId: categoryId,
                formatId: formatId,
                startDate: nil,
                endDate: nil,
                tags: nil
            )
        )
        dismiss()
    }
}

#Preview {
    @Previewable @State var myBooks: [CollectibleItem] = PreviewBooksItems
    NewBookView(myBooks: $myBooks)
}
