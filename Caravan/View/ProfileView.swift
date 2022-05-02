//
//  ProfileView.swift
//  Caravan
//
//  Created by 정지혁 on 2022/04/29.
//

import SwiftUI

struct ProfileView: View {
    
    let name = UserDefaults.standard.string(forKey: "name")
    let sentence = UserDefaults.standard.string(forKey: "sentence")
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                
                HStack {
                    Circle()
                        .fill(Color("BackgroundColor"))
                        .frame(width: 120, height: 120)
                        .navigationTitle("Profile")
                        .navigationBarHidden(true)
                    
                    VStack(alignment: .leading) {
                        Text(name ?? "프로필을 설정해주세요.")
                            .font(.title2)
                            .bold()
                        
                        Text(sentence ?? "한 문장을 설정해주세요.")
                            .foregroundColor(.secondary)
                            .padding(.top, 1)
                    }
                    .padding(.leading, 10)
                }
                
                Text("Results")
                    .font(.title)
                    .bold()
                    .padding(.top, 40)
            
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("BackgroundColor"))
                        .frame(height: 200)
                    
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .frame(height: 160)
                        
                        VStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("SecondBrandColor"))
                                .frame(width: 40, height: 40, alignment: .leading)
                                .padding(20)
                            
                            Spacer()
                        }
                        .frame(height: 160)
                    }
                    .padding(20)
                }
                
                Spacer()
                
                NavigationLink(destination: ProfileEditView(), label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("BrandColor"))
                            .frame(height: 60)
                        
                        Text("프로필 수정하기")
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

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .previewDevice("iPhone 13 Pro")
    }
}
