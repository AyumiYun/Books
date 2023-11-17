//
//  BooksApp.swift
//  Books
//
//  Created by Ylenia Spagnuolo on 14/11/23.
//

import SwiftUI

@main
struct BooksApp: App {
    var body: some Scene {
        WindowGroup {
            
            TabView() {
            ContentView()
                    .tabItem {
                    Image(systemName: "book.fill")
                    Text("Leggi ora")
                }
                .tag(1)
                
                LibreriaView()
                    .tabItem {
                    Image(systemName: "books.vertical.fill")
                    Text("Libreria")
                }
                .tag(2)
                BookStoreView()
                    .tabItem {
                    Image(systemName: "bag.fill")
                    Text("Book Store")
                }
                .tag(3)
                AudioLibriView()
                    .tabItem {
                    Image(systemName: "headphones")
                    Text("Libreria")
                }
                .tag(4)
                CercaView()
                    .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Libreria")
                }
                .tag(5)
            }
        }
    }
}
