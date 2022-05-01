//
//  ProfileView.swift
//  Caravan
//
//  Created by 정지혁 on 2022/04/29.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                
                NavigationLink(destination: ProfileEditView(), label: {
                    Image(systemName: "gearshape")
                        .foregroundColor(Color("BrandColor"))
                        .font(.title2)
                })
                
                HStack {
                    Circle()
                        .fill(Color("BackgroundColor"))
                        .frame(width: 120, height: 120)
                        .navigationTitle("Profile")
                        .navigationBarHidden(true)
                    
                    VStack(alignment: .leading) {
                        Text("Jayden")
                            .font(.title2)
                            .bold()
                        
                        Text("One Sentence")
                            .foregroundColor(.secondary)
                    }
                }
                
                Text("Results")
                    .font(.title)
                    .bold()
                    .padding(.top, 40)
            
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("BackgroundColor"))
                        .frame(height: 200)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .frame(height: 160)
                        .padding(20)
                }
                
                Spacer()
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
