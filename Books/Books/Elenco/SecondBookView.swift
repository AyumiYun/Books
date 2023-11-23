//
//  SecondBookView.swift
//  Books
//
//  Created by Ylenia Spagnuolo on 20/11/23.
//

import SwiftUI

struct SecondBookView: View {
    
    var book: book
    
    var body: some View {
        VStack{
            Image(book.coverBookImage)
                .resizable()
                .scaledToFit()
                .frame(width: 300)
            Text(book.title)
                .font(.title)
                .bold()
                .fontDesign(.serif)
            Text(book.author)
                .font(.title2)
                .fontDesign(.serif)
            Text("\(book.price)")
                
            }
    }
}

#Preview {
    SecondBookView(book: BookViewModel().bookList[0])
}
