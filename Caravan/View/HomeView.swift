//
//  HomeView.swift
//  Caravan
//
//  Created by 정지혁 on 2022/04/28.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Timer")
                .font(.title)
                .bold()
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color("BackgroundColor"))
                    .frame(height: 356)
                
                VStack {
                    Text("별들이 겹치는 순간")
                        .font(.title2)
                        .padding(.bottom, 30)
                    
                    ZStack {
                        Circle()
                            .frame(width: 200, height: 200)
                            .foregroundColor(Color.white)
                        
                        Circle()
                            .frame(width: 160, height: 160)
                            .foregroundColor(Color("BackgroundColor"))
                        
                        Button(action: {}, label: {
                            Image(systemName: "play.fill")
                                .font(.system(size: 70))
                                .frame(width: 70, height: 70)
                                .foregroundColor(Color("BrandColor"))
                        })
                    }
                    
                    Text("00:00")
                        .foregroundColor(.secondary)
                        .padding(.top, 30)
                }
            }
            
            Text("Memo")
                .font(.title)
                .bold()
                .padding(.top, 30)
            
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color("BackgroundColor"))
                    .frame(height: 138)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 164, height: 100)
                        .foregroundColor(Color.white)
                    
                    VStack(alignment: .leading) {
                        Text("무엇인가를 이해하기에")
                        
                        Text("언젠가 기억에서 사라진다")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                }
                .padding()
            }
            
            Spacer()
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 13 Pro")
    }
}
