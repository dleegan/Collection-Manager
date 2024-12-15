//
//  MyCollectionView.swift
//  Collection Manager
//
//  Created by dleegan on 11/12/2024.
//

import SwiftUI

struct MyCollectionView: View {
    @State private var showModal: Bool = false
    @State private var searchText: String = ""
    @State private var myBooks: [CollectibleItem] = PreviewBooksItems
    @State private var categoriesSelected: [Int] = []

    var body: some View {
        NavigationStack {
            VStack {
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(bookCategories) { category in
                            CategoryItemView(category: category)
                                .opacity(categoriesSelected.contains(category.id) ? 1 : 0.5)
                                .onTapGesture { handleCategorySelection(category: category) }
                        }
                    }
                    .padding(.bottom, 10)
                }
                .contentMargins(.horizontal, 20)

                List {
                    ForEach(filteredMeals) { book in
                        NavigationLink {
                            BookDetailsView(book: book)
                        } label: {
                            BookItemView(book: book)
                        }
                    }
                    .onDelete { index in
                        print("index: \(index)")
                    }
                }
                .listStyle(.plain)
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("New", systemImage: "plus") {
                        showModal = true
                    }
                }
            }
            .navigationTitle("Bibliothèque")
            .searchable(text: $searchText)
            .sheet(isPresented: $showModal) {
                NewBookView(myBooks: $myBooks)
            }
        }
    }

    var filteredMeals: [CollectibleItem] {
        guard !searchText.isEmpty else { return myBooks }
        return myBooks.filter { book in
            book.name.lowercased().contains(searchText.lowercased()) ||
                book.author.lowercased().contains(searchText.lowercased())
        }
    }

    private func handleCategorySelection(category: CategoryItem) {
        if categoriesSelected.contains(category.id) {
            if let idx = categoriesSelected.firstIndex(where: { $0 == category.id }) {
                categoriesSelected.remove(at: idx)
            }
        } else {
            categoriesSelected.append(category.id)
        }
    }
}

#Preview {
    MyCollectionView()
}
