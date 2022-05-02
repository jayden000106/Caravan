//
//  BookRegistView.swift
//  Caravan
//
//  Created by 정지혁 on 2022/05/01.
//

import SwiftUI

struct BookRegistView: View {
    @State var bookName: String = ""
    @State var bookLink: String = ""
    
    var body: some View {
        
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Text("책 제목을 입력해주세요.")
                    .font(.title3)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .frame(height: 60)
                    
                    TextField("입력해주세요", text: $bookName)
                        .padding()
                }
                
                Text("링크(교보문고)를 입력해주세요.")
                    .font(.title3)
                    .padding(.top, 40)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .frame(height: 60)
                    
                    TextField("입력해주세요", text: $bookLink)
                        .padding()
                }
                
                Text("책 표지 사진을 첨부해주세요.")
                    .font(.title3)
                    .padding(.top, 40)
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .frame(height: 200)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct BookRegistView_Previews: PreviewProvider {
    static var previews: some View {
        BookRegistView()
            .previewDevice("iPhone 13 Pro")
    }
}
