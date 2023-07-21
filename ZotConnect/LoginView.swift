//
//  LoginView.swift
//  ZotConnect
//
//  Created by Jonathan Duya on 7/20/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
            VStack {
                Text("Welcome to My App!")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Image("Background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
            )
        }
    }

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
