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
                            .fontDesign(.serif)
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }.padding(-2)
                    
                    NavigationLink {
                        ReadingBook()
                    } label: {
                        Image("Qui, solo Qui di Christelle Dabos")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 90)
                            .aspectRatio(4.0, contentMode: .fill)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(-10)
                    
                    Divider()
                    
                    Spacer()
                    
                }.padding()
                
                Text("Novità libri")
                    .font(.title)
                    .fontWeight(.semibold)
                    .fontDesign(.serif)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, -180.0)
                
                ScrollView(.horizontal) {
                    HStack{
                        ForEach (BookViewModel()
                            .bookList, id: \.self) {
                                book in
                                NavigationLink(destination: SecondBookView(book: book)){
                                    Image (book .coverBookImage)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 200)
                                }
                            }

                    }
                    Divider()
                }

                
                /*NavigationStack {
                 label  {
                 NavigationLink(destination: NewModel()) {
                 Text("Elenco completo")
                 .font(.title2)
                 .fontWeight(.regular)
                 .foregroundColor(Color.black)
                 .multilineTextAlignment(.leading)
                 .padding(.leading, -180.0)
                 }
                 }
                 }
                 */
                
                /*Image("Sotto")
                    .resizable()
                    .scaledToFit()
                 */
                
                
                
            }.navigationTitle("Leggi ora")
                .fontDesign(.serif)
                .font(.title)
                .fontWeight(.semibold)
            
        }
    }
}

#Preview {
    ContentView()
}
