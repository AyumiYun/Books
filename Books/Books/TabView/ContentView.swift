//
//  ContentView.swift
//  Books
//
//  Created by Ylenia Spagnuolo on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        NavigationStack{
            ScrollView{
                VStack {
                    HStack{
                        Circle()
                            .fill(.white)
                            .stroke(.blue , lineWidth: 3)
                            .frame(width: 10)
                        Text("Attività di lettura di oggi")
                            .foregroundColor(.blue)
                            .font(.system(size: 12))
                    }.frame(maxWidth: .infinity, alignment: .leading)
                        .padding(8.0)
                    
                    HStack{
                        Image("Profilo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                    }.frame(maxWidth: .infinity, alignment: .trailing)
                        .position(x: 180, y: -50)
                }
                
                Divider()
                
                VStack {
                    HStack{
                        
                        Text("Continua")
                            .font(.title)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }.padding(-2)
                    
                    NavigationLink {
                        ReadingBook()
                    } label: {
                        Image("Leggendo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 90)
                            .aspectRatio(4.0, contentMode: .fill)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(-10)
                    
                    Divider()
                    
                    Text("Novità libri")
                        .font(.title)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, -180.0)
                    
                    
                    Spacer()
                    
                }.padding()
                
                ScrollView(.horizontal) {
                    ZStack{
                        Rectangle()
                            .frame(height: 400)
                            .foregroundColor(.white)
                        
                        HStack {
                            Image("David")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 200)
                            Image("Ken")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 200)
                            Image("Jennifer")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 200)
                            Image("Lezioni")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 200)
                            Image("Sanaka")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 200)
                        }
                        Spacer()
                    
                        
                              
                        }
                    }
                    
                    
                }
                
            NavigationStack{
                Image("Novità")
            }
                
            }.navigationTitle("Leggi ora")
        }
    }


    
    #Preview {
        ContentView()
    }
