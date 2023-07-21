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
               Spacer()
               
               Button(action: {
                   //
               }) {
                   Text("Sign in with UCI")
                       .foregroundColor(.white)
                       .font(.headline)
                       .padding()
                       .background(Color.blue)
                       .cornerRadius(8)
               }
               
               Spacer()
           }
           .padding()
       }
   }

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
