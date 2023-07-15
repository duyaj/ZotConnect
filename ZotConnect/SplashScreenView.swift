//
//  SplashScreenView.swift
//  ZotConnect
//
//  Created by Jonathan Duya on 7/15/23.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive : Bool = false
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
                VStack {
                    Image("ZotSplash")
                }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
