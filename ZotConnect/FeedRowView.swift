//
//  FeedRowView.swift
//  ZotConnect
//
//  Created by Jonathan Duya on 7/16/23.
//

import SwiftUI

struct FeedRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Jonathan Duya")
                            .font(.subheadline).bold()
                        
                        Text("@duyaj")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("2d")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    Text("I hate colin")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            
            HStack {
                
                Button {
                    //
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Image(systemName: "arrow.turn.up.right")
                        .font(.subheadline)
                }
            }
            .padding()
            .foregroundColor(.gray)
            Divider()
        }
    }
}

struct FeedRowView_Previews: PreviewProvider {
    static var previews: some View {
        FeedRowView()
    }
}
