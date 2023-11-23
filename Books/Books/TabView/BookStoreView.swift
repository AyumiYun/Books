//
//  BookStoreView.swift
//  Books
//
//  Created by Ylenia Spagnuolo on 15/11/23.
//

import SwiftUI

struct BookStoreView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image ("ImmyBookStore")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                Spacer()
            }
        }
    }
}

#Preview {
    BookStoreView()
}
