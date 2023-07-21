//
//  FeedView.swift
//  ZotConnect
//
//  Created by Jonathan Duya on 7/15/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                YourGroupsFeedView()
                    .padding(.bottom, 8)
                LazyVStack {
                    ForEach(0 ... 20, id: \.self) { _ in FeedRowView()
                            .padding(.bottom)
                            .padding(.horizontal)
                    }
                }
            }
            
            Button {
                //
            } label: {
                Image(systemName: "square.and.pencil")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
