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
                    Image(systemName: "bag.fill")
                    Text("Book Store")
                }
               
                AudioLibriView()
                    .tabItem {
                    Image(systemName: "headphones")
                    Text("Audiolibri")
                }
              
                CercaView()
                    .tabItem {
                        Label("Cerca", systemImage: "magnifyingglass")
                }
            }
            
        }
    }
}
