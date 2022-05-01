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
            VStack(alignment: .leading) {
                
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
                
                Text("Reading")
                    .font(.title2)
                    .bold()
                    .padding(.top, 30)
                
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("BackgroundColor"))
                        .frame(height: 200)
                    
                    NavigationLink(destination: BookDetailView(), label: {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.white)
                                .frame(width: 100, height: 160)
                                .padding(.leading, 20)
                    })
                }
                
                Text("Read")
                    .font(.title2)
                    .bold()
                    .padding(.top, 20)
                
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("BackgroundColor"))
                        .frame(height: 200)
                    
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 40, height: 160)
                        .padding(.leading, 20)
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

struct BookShelfView_Previews: PreviewProvider {
    static var previews: some View {
        BookShelfView()
            .previewDevice("iPhone 13 Pro")
    }
}
