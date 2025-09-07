//
//  SplashScreenView.swift
//  ChatApp
//
//  Created by Suhanee on 07/09/25.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State var isActive : Bool = false
    @State private var opacity = 0.5
    var body: some View {
        if isActive{
            ContentView()
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 0.5)){
                        opacity = 1
                    }
                }
        }else{
            ZStack {
                Color.secondary500
                    .ignoresSafeArea()
                
                GIFView(gifName: "bird")
                    .frame(width: 200, height: 200)
                    .background(.clear)
            }
            .background(.red)
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 4.2){
                    isActive = true
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
