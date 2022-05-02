//
//  TimerView.swift
//  Caravan
//
//  Created by 정지혁 on 2022/05/02.
//

import SwiftUI

struct TimerView: View {
    
    @State var isPlaying: Bool = false
    
    @ObservedObject var managerClass = StopWatchManagerClass()
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
                .navigationTitle("스톱워치")
                .navigationBarTitleDisplayMode(.inline)
            
            VStack {
                Text("별들이 겹치는 순간")
                    .font(.title2)
                
                Text(String(format: "%02.0f:%02.0f", managerClass.secondElapsed / 60.0, managerClass.secondElapsed.truncatingRemainder(dividingBy: 60.0)))
                    .foregroundColor(.secondary)
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                
                ZStack {
                    Circle()
                        .stroke(lineWidth: 40)
                        .frame(width: 300, height: 300)
                        .foregroundColor(Color.white)
                    
                    Circle()
                        .trim(from: 0.0, to: min(managerClass.secondElapsed / 1000.0, 1.0))
                        .stroke(AngularGradient(gradient: Gradient(colors: [Color("BrandColor"), Color("SecondBrandColor"), Color("BrandColor")]), center: .center), style: StrokeStyle(lineWidth: 40, lineCap: .round, lineJoin: .round))
                        .frame(width: 300, height: 300)
                        .rotationEffect((Angle(degrees: 270)))
                    
                    Button(action: {
                        self.isPlaying.toggle()
                        
                        switch managerClass.mode {
                        case .stopped:
                            managerClass.start()
                        case .running:
                            managerClass.stop()
                        }
                        
                    }, label: {
                        Image(systemName: self.isPlaying == true ? "stop.fill" : "play.fill")
                            .font(.system(size: 100))
                            .frame(width: 100, height: 100)
                            .foregroundColor(Color("BrandColor"))
                    })
                }
                .padding()
                
                Spacer()
                
                Button(action: {}, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .frame(height: 60)
                        
                        Text("한 문장 기록하기")
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

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
            .previewDevice("iPhone 13 Pro")
    }
}

enum mode {
    case running
    case stopped
}

class StopWatchManagerClass: ObservableObject {
    @Published var secondElapsed = 0.0
    @Published var mode:mode = .stopped
    var timer = Timer()
    
    func start() {
        mode = .running
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            self.secondElapsed += 1
        }
    }
    
    func stop() {
        timer.invalidate()
        secondElapsed = 0
        mode = .stopped
    }
}
