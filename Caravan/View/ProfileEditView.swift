//
//  ProfileEditView.swift
//  Caravan
//
//  Created by 정지혁 on 2022/05/02.
//

import SwiftUI

struct ProfileEditView: View {
    @State var name: String = ""
    @State var sentence: String = ""
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
                .navigationTitle("프로필 수정")
                .navigationBarTitleDisplayMode(.inline)
            
            VStack(alignment: .leading) {
                Text("이름을 입력해주세요.")
                    .font(.title3)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .frame(height: 60)
                    
                    TextField("입력해주세요", text: $name)
                        .padding()
                }
                
                Text("한 문장을 입력해주세요.")
                    .font(.title3)
                    .padding(.top, 40)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .frame(height: 60)
                    
                    TextField("입력해주세요", text: $sentence)
                        .padding()
                }
                
                Spacer()
                
                Button(action: {
                    
                    UserDefaults.standard.set(name, forKey: "name")
                    UserDefaults.standard.set(sentence, forKey: "sentence")
                    
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("BrandColor"))
                            .frame(height: 60)
                        
                        Text("수정하기")
                            .foregroundColor(Color.black)
                            .bold()
                    }
                })
                .padding(.bottom, 70)
            }
            .padding()
        }
    }
}

struct ProfileEditView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditView()
            .previewDevice("iPhone 13 Pro")
    }
}
