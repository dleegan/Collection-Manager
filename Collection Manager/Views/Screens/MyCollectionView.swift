//
//  MyCollectionView.swift
//  Collection Manager
//
//  Created by dleegan on 11/12/2024.
//

import SwiftUI

struct MyCollectionView: View {
    @State private var showModal: Bool = false
    @State private var myBooks: [CollectibleItem] = PreviewBooksItems

    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(myBooks) { book in
                        NavigationLink {
                            BookDetailsView(book: book)
                        } label: {
                            BookItemView(book: book)
                        }
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
            .sheet(isPresented: $showModal) {
                NewBookView(myBooks: $myBooks)
            }
        }
    }
}

#Preview {
    MyCollectionView()
}
