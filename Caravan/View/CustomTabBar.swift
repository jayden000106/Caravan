//
//  CustomTabBar.swift
//  Caravan
//
//  Created by 정지혁 on 2022/04/28.
//

import SwiftUI

struct CustomTabBar: View {
    
    @StateObject var tabData = TabViewModel()
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    @Namespace var animation
    
    var body: some View {
        TabView(selection: $tabData.currentTab) {
            
            Text("Home")
                .tag("Home")
            
            Text("Book Shelf")
                .tag("Book Shelf")
            
            Text("Profile")
                .tag("Profile")
        
        }
        .overlay(
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color("BackgroundColor"))
                    .frame(height:53)
                HStack {
                    TabBarButton(title: "Home", image: "house.fill", animation: animation)
                    
                    TabBarButton(title: "Book Shelf", image: "books.vertical.fill", animation: animation)
                    
                    TabBarButton(title: "Profile", image: "person.fill", animation: animation)
                }
                    .environmentObject(tabData)
            }
            .padding(.horizontal, 17)
            , alignment: .bottom
        )
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
            .previewDevice("iPhone 13 Pro")
    }
}

struct TabBarButton: View {
    var title: String
    var image: String
    var animation: Namespace.ID
    
    @EnvironmentObject var tabData: TabViewModel
    
    var body: some View {
        
        Button(action: {
            withAnimation {
                tabData.currentTab = title
            }
        }, label: {
            VStack {
                Image(systemName: image)
                    .font(.title2)
            }
            .foregroundColor(tabData.currentTab == title ? Color("BrandColor") : .gray)
            .frame(maxWidth: .infinity)
        })
    }
}
