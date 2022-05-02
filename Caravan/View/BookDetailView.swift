//
//  BookDetailView.swift
//  Caravan
//
//  Created by 정지혁 on 2022/05/02.
//

import SwiftUI

struct BookDetailView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                
                Text("곰의 행복")
                    .font(.title)
                    .bold()
                
                Text("이민진 지음 | 이미정 옮김 | 2018")
                    .foregroundColor(.secondary)
                    .padding(.top, 10)
                
                Text("어디에도 속하지 못했던 자이니치들의 분노와 슬픔에서 탄생한 대작")
                    .bold()
                    .padding(.top, 10)
                
                Text("한국계 1.5세인 미국 작가 이민진의 장편소설 『파친코』 제1권. 내국인이면서 끝내 이방인일 수밖에 없었던 자이니치(재일동포)들의 처절한 생애를 깊이 있는 필체로 담아낸 작품이다.")
                    .foregroundColor(.secondary)
                    .padding(.top, 10)
                
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
            }
            .padding()
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView()
            .previewDevice("iPhone 13 Pro")
    }
}
