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
                        Label("Leggi ora", systemImage: "book.fill")
                        
                    }
                
                LibreriaView()
                    .tabItem {
                        Label("Libreria", systemImage: "books.vertical.fill")
                        
                    }
                
                BookStoreView()
                    .tabItem {
                        Label("Bookstore", systemImage: "bag.fill")
                    }
                
                AudioLibriView()
                    .tabItem {
                        Label("Audiolibri", systemImage: "headphones")
                    }
                
                CercaView()
                    .tabItem {
                        Label("Cerca", systemImage: "magnifyingglass")
                    }
                
            }
            .tint(Color.black)
        }
    }
}
