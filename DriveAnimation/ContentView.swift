//
//  ContentView.swift
//  DriveAnimation
//
//  Created by 二渡和輝 on 2020/03/23.
//  Copyright © 2020 二渡和輝. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var townScrole: Bool = false
    @State var roadScrole: Bool = false
    @State var carMoving: Bool = false
    @State var billdingScrole: Bool = false
    @State var cloud1Moving: Bool = false
    @State var cloud2Moving: Bool = false
    @State var cloud3Moving: Bool = false
    @State var planeMoving: Bool = false
    
    var body: some View {
        ZStack {
            
            ZStack {
//                Rectangle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9332333207, green: 0.96470505, blue: 0.9971347451, alpha: 1)), .blue]),
//                                         startPoint: .bottom,
//                                         endPoint: .top))
//                    .frame(height: 350)
//                    .offset(y: -235)
//                    .edgesIgnoringSafeArea(.top)
                Image("billding")
                    .resizable()
                    .frame(width: 827, height: 470)
                    .offset(x: billdingScrole ? -204 : 204, y: -220)
                    .animation(Animation.linear(duration: 20)
                        .repeatForever(autoreverses: false))
                    .onAppear() {
                        self.billdingScrole.toggle()
                }
                
                Image("cloud1")
                    .resizable()
                    .frame(width: 80, height: 60)
                    .offset(x: cloud1Moving ? -250 : 250, y: -270)
                    .animation(Animation.linear(duration: 18)
                            .repeatForever(autoreverses: false))
                        .onAppear() {
                            self.cloud1Moving.toggle()
                    }
                
                Image("cloud2")
                    .resizable()
                    .frame(width: 80, height: 60)
                    .offset(x: cloud2Moving ? -250 : 250, y: -350)
                    .animation(Animation.linear(duration: 31)
                            .repeatForever(autoreverses: false))
                        .onAppear() {
                            self.cloud2Moving.toggle()
                    }

                Image("cloud3")
                    .resizable()
                    .frame(width: 80, height: 60)
                    .offset(x: cloud3Moving ? -250 : 250, y: -200)
                    .animation(Animation.linear(duration: 23)
                            .repeatForever(autoreverses: false))
                        .onAppear() {
                            self.cloud3Moving.toggle()
                    }
                
                Image("cloud1")
                    .resizable()
                    .frame(width: 60, height: 40)
                    .offset(x: cloud1Moving ? -250 : 250, y: -400)
                    .animation(Animation.linear(duration: 43)
                            .repeatForever(autoreverses: false))
                
                Image("cloud2")
                .resizable()
                .frame(width: 60, height: 40)
                .offset(x: cloud2Moving ? -250 : 250, y: -230)
                .animation(Animation.linear(duration: 37)
                        .repeatForever(autoreverses: false))
                
                Image("plane")
                .resizable()
                    .frame(width: 15, height: 8).rotationEffect(.degrees(15))
                    .offset(x: planeMoving ? 150 : -270, y: planeMoving ? -460 : -350)
                .animation(Animation.linear(duration: 20)
                        .repeatForever(autoreverses: false))
                    .onAppear() {
                        self.planeMoving.toggle()
                }
            }
            
//            Image("billding")
//                .resizable()
//                .frame(width: 822, height: 130)
//                .offset(x: billdingScrole ? -204 : 204, y: -40)
//                .animation(Animation.linear(duration: 20)
//                    .repeatForever(autoreverses: false))
//                .onAppear() {
//                    self.billdingScrole.toggle()
//            }
            
            Image("town")
                .resizable()
                .frame(width: 1250, height: 100)
                .offset(x: townScrole ? -418 : 418)
                .animation(Animation.linear(duration: 20)
                    .repeatForever(autoreverses: false))
                .onAppear() {
                    self.townScrole.toggle()
            }
            
            
            Image("road")
                .resizable()
                .frame(width: 840, height: 50)
                .offset(x: roadScrole ? -210 : 210, y: 68)
                .animation(Animation.linear(duration: 5)
                    .repeatForever(autoreverses: false))
                .onAppear() {
                    self.roadScrole.toggle()
                    
            }
            
            Image("car")
                .resizable()
                .frame(width: 85, height: 50)
                .offset(x: -80, y: carMoving ? 48 : 44)
                .rotationEffect(.degrees(carMoving ? 1 : -0.5))
                .animation(Animation.easeIn(duration: 0.6)
                    .repeatForever(autoreverses: true))
                .onAppear() {
                    self.carMoving.toggle()
            }
            
            Image("light")
                .resizable().opacity(0.45)
                .frame(width: 200, height: 20)
                .offset(x: 70, y: carMoving ? 63 : 59)
                .rotationEffect(.degrees(carMoving ? -3 : -4))
                .animation(Animation.easeIn(duration: 0.6)
                    .repeatForever(autoreverses: true))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
