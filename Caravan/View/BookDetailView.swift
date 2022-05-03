//
//  BookDetailView.swift
//  Caravan
//
//  Created by 정지혁 on 2022/05/02.
//

import SwiftUI

struct BookDetailView: View {
    var book: Book
    
    var body: some View {
        ZStack {
            
            Color("BackgroundColor")
                .ignoresSafeArea()
                .navigationTitle("책 정보")
                .navigationBarTitleDisplayMode(.inline)
            

            ScrollView {
                
                VStack(spacing: 0) {
                    
                    Image(book.bookImage)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 400)
                        .clipped()
                    
                    VStack(alignment: .leading, spacing: 0) {
                        
                        Text(book.bookTitle)
                            .font(.title)
                            .bold()
                            .padding(.top, 40)
                        
                        Text(book.bookWirter)
                            .foregroundColor(.secondary)
                            .padding(.top, 10)
                        
                        Text(book.bookSummary)
                            .bold()
                            .padding(.top, 20)
                        
                        Text(book.bookDetail)
                            .foregroundColor(.secondary)
                            .padding(.top, 20)
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .frame(height: 60)
                                
                                Text("느낌 남기기")
                                    .foregroundColor(Color.black)
                                    .bold()
                            }
                        })
                        .padding(.top, 20)
                        .padding(.bottom, 70)
                    }
                    .padding(.horizontal)
                }
            }
            .ignoresSafeArea(.all)
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: books[0])
            .previewDevice("iPhone 13 Pro")
            .previewInterfaceOrientation(.portrait)
    }
}
