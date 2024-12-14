//
//  ImageView.swift
//  Collection Manager
//
//  Created by dleegan on 13/12/2024.
//

import SwiftUI

struct ImageView: View {
    let imageUrl: String

    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } else if phase.error != nil || imageUrl.count <= 10 {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.gray.opacity(0.5))
                    .overlay {
                        Image(systemName: "photo.on.rectangle")
                            .font(.largeTitle)
                    }
            } else {
                ProgressView()
            }
        }
    }
}

#Preview {
    ImageView(imageUrl: "")
    ImageView(imageUrl: "https://m.media-amazon.com/images/I/81NruMA7N9L._SL800_.jpg?w=3840&q=70")
}
