//
//  ProfileEditView.swift
//  Caravan
//
//  Created by 정지혁 on 2022/05/02.
//

import SwiftUI

struct ProfileEditView: View {
    @State var name: String = ""
    @State var santence: String = ""
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
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
                    
                    TextField("입력해주세요", text: $santence)
                        .padding()
                }
                
                Spacer()
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
