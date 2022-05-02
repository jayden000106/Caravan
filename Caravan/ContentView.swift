//
//  ContentView.swift
//  Caravan
//
//  Created by 정지혁 on 2022/04/28.
//

import SwiftUI

struct ContentView: View {
    func setNotification() -> Void {
        let manager = LocalNotificationManager()
        manager.requestPermission()
        manager.addNotification(title: "하루에 한 번 잠깐 책을 읽을 시간이에요")
        manager.schedule()
        // manager.scheduleNotifications()
    }
    
    var body: some View {
        VStack {
            Button(action: {
                self.setNotification()
            }, label: {
                Text("Set Notification")
            })
            CustomTabBar()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
    }
}
