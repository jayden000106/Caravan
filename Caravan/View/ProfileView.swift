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
    
    func setNotification() -> Void {
        let manager = LocalNotificationManager()
        manager.requestPermission()
        manager.addNotification(title: "하루에 한 번 잠깐 책을 읽을 시간이에요")
        manager.schedule()
        // manager.scheduleNotifications()
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Circle()
                        .fill(Color("BackgroundColor"))
                        .frame(width: 120, height: 120)
                        .navigationTitle("Profile")
                        .navigationBarHidden(true)
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Text(name ?? "프로필을 설정해주세요.")
                            .font(.title2)
                            .bold()
                        
                        Text(sentence ?? "한 문장을 설정해주세요.")
                            .foregroundColor(.secondary)
                            .padding(.top, 10)
                    }
                    .padding(.leading, 10)
                }
                .padding(.top, 20)
                
                Text("Results")
                    .font(.title)
                    .bold()
                    .padding(.top, 60)
            
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("BackgroundColor"))
                        .frame(height: 200)
                    
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .frame(height: 160)
                        
                        VStack(spacing: 0) {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("SecondBrandColor"))
                                .frame(width: 40, height: 40, alignment: .leading)
                            
                            Spacer()
                        }
                        .padding(20)
                        .frame(height: 160)
                    }
                    .padding(20)
                }
                .padding(.top, 20)
                
                Spacer()
                
                Button(action: {
                    self.setNotification()
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("BackgroundColor"))
                            .frame(height: 60)
                        
                        Text("Notification Test")
                            .foregroundColor(Color.black)
                    }
                })
                
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
            .padding(.horizontal)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .previewDevice("iPhone 13 Pro")
    }
}
