//
//  HomeView.swift
//  Caravan
//
//  Created by 정지혁 on 2022/04/28.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 0) {
                Text("Timer")
                    .font(.title)
                    .bold()
                    .padding(.top, 20)
                    .navigationTitle("Home")
                    .navigationBarHidden(true)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("BackgroundColor"))
                        .frame(height: 356)
                    
                    VStack {
                        ZStack {
                            Circle()
                                .frame(width: 200, height: 200)
                                .foregroundColor(Color.white)
                            
                            Circle()
                                .frame(width: 160, height: 160)
                                .foregroundColor(Color("BackgroundColor"))
                            
                            NavigationLink(destination: TimerView(), label: {
                                    Image(systemName: "play.fill")
                                        .font(.system(size: 70))
                                        .frame(width: 70, height: 70)
                                        .foregroundColor(Color("BrandColor"))
                            })
                        }
                    }
                }
                .padding(.top, 10)
                
                Text("Memo")
                    .font(.title)
                    .bold()
                    .padding(.top, 40)
                
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("BackgroundColor"))
                        .frame(height: 138)
                    
                    ZStack{
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(memos) { memo in
                                    MemoView(memo: memo)
                                }
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

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 13 Pro")
    }
}

struct Memo: Identifiable {
    let id = UUID()
    let memoContent: String
    let bookTitle: String
}

let memos = [
    Memo(memoContent: "무언가를 이해하기에 아직 어리다면, ", bookTitle: "언젠가 기억에서 사라진다"),
    Memo(memoContent: "너희들 하고 싶은 대로 하라.", bookTitle: "개밥바라기별")
]

struct MemoView: View {
    
    let memo: Memo
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                
                VStack(alignment: .leading) {
                    Text(memo.memoContent)
                        .padding([.top, .leading, .trailing], 10)
                        .lineLimit(2)
                    
                    Spacer()
                
                    Text(memo.bookTitle)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                        .padding([.leading, .bottom, .trailing], 10)
                        .lineLimit(1)
                }
                .frame(width: 200, alignment: .leading)
        }
        .frame(width: 200, height: 100)
    }
}
