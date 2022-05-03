//
//  BookShelfView.swift
//  Caravan
//
//  Created by 정지혁 on 2022/04/29.
//

import SwiftUI

struct BookShelfView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Text("Book Shelf")
                        .font(.title)
                        .bold()
                        .navigationTitle("Book Shelf")
                        .navigationBarHidden(true)
                    
                    Spacer()
                    
                    NavigationLink(destination: BookRegistView(), label: {
                            Image(systemName: "plus")
                                .foregroundColor(Color("BrandColor"))
                                .font(.title2)
                    })
                }
                .padding(.top, 10)
                
                Text("Reading")
                    .font(.title2)
                    .bold()
                    .padding(.top, 40)
                
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("BackgroundColor"))
                        .frame(height: 200)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(books) { book in
                                NavigationLink(destination: BookDetailView(book: book), label: {
                                    BookImageView(book: book)
                                })
                            }
                        }
                    }
                    .padding(.leading, 20)
                }
                .padding(.top, 10)
                
                Text("Read")
                    .font(.title2)
                    .bold()
                    .padding(.top, 20)
                
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("BackgroundColor"))
                        .frame(height: 200)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(books) { book in
                                NavigationLink(destination: BookDetailView(book: book), label: {
                                    BookReadImageView(book: book)
                                })
                            }
                        }
                    }
                    .padding(.leading, 20)
                }
                .padding(.top, 10)
                
                Spacer()
            }
            .padding(.horizontal)
        }
    }
}

struct BookShelfView_Previews: PreviewProvider {
    static var previews: some View {
        BookShelfView()
            .previewDevice("iPhone 13 Pro")
    }
}

struct Book: Identifiable {
    let id = UUID()
    let bookTitle: String
    let bookWirter: String
    let bookSummary: String
    let bookDetail: String
    let bookImage: String
}

let books = [
    Book(bookTitle: "별들이 겹치는 순간", bookWirter: "이민진 지음 | 이미정 옮김 | 2018", bookSummary: "어디에도 속하지 못했던 자이니치들의 분노와 슬픔에서 탄생한 대작", bookDetail: "한국계 1.5세인 미국 작가 이민진의 장편소설 『파친코』 제1권. 내국인이면서 끝내 이방인일 수밖에 없었던 자이니치(재일동포)들의 처절한 생애를 깊이 있는 필체로 담아낸 작품이다.", bookImage: "Book1"),
    Book(bookTitle: "나답게 사는 방법", bookWirter: "이민정 지음 | 이미진 옮김 | 2022", bookSummary: "Summary2", bookDetail: "상승 욕구가 강한 재미동포들과 달리 많은 자이니치들이 일본의 사회적, 경제적 사다리 아래쪽에서 신음하고 있다는 사실을 알게 된 저자는", bookImage: "Book2"),
    Book(bookTitle: "토스트", bookWirter: "서민정 지음 | 서미진 옮김 | 2012", bookSummary: "Summary3", bookDetail: "저자가 자이니치, 즉 재일동포의 존재를 처음 접한 것은 대학생이었던 1989년, 일본에서 자이니치들을 만났던 개신교 선교사의 강연을 들은 때였다.", bookImage: "Book3"),
    Book(bookTitle: "곰의 행복", bookWirter: "김민정 지음 | 김미진 옮김 | 2014", bookSummary: "Summary4", bookDetail: "그때부터 자이니치에 관해 관심을 가지게 되었고 이번 작품에서 일제강점기부터 1980년대까지를 시대적 배경으로 하여 4대에 걸친 핏줄의 역사를 탄생시켰다.", bookImage: "Book4")
]

struct BookImageView: View {
    
    let book: Book
    
    var body: some View {
        Image(book.bookImage)
            .resizable()
            .frame(width: 100, height: 160)
            .cornerRadius(10)
    }
}

struct BookReadImageView: View {
    let book: Book
    
    var body: some View {
        Image(book.bookImage)
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 160)
            .clipped()
    }
}
