//
//  LibreriaView.swift
//  Books
//
//  Created by Ylenia Spagnuolo on 15/11/23.
//

import SwiftUI

struct LibreriaView: View {
    var body: some View {
        VStack {
            Image ("ImmyLibro")
                .resizable()
            .aspectRatio(contentMode: .fill)
        }
    }
}

#Preview {
    LibreriaView()
}
