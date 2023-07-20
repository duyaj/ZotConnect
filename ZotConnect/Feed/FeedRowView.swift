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
                    .foregroundColor(Color(.systemGreen))
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Video Game Development Club").foregroundColor(.white).padding(.horizontal, 8).font(.system(size: 14))
                        .background(Capsule()
                        .fill(.blue)).fixedSize()
                    HStack {
                        Text("Jonathan Duya")
                            .font(.subheadline).bold()
                        
                        Text("@duyaj")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("2d")
                            .foregroundColor(.gray)
                            .font(.caption)
                            .padding(.trailing, 6)
                        
                    }
                    
                    Text("Can anyone give me a ride?")
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
            .padding(10)
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
