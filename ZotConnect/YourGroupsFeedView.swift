//
//  YourGroupsFeedView.swift
//  ZotConnect
//
//  Created by Jonathan Duya on 7/19/23.
//

import SwiftUI

struct YourGroupsFeedView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 24) {
                ForEach(0 ... 10, id: \.self) { user in
                    VStack {
                        ZStack(alignment: .bottomTrailing) {
                            Circle()
                                .frame(width: 72, height: 72)
                                .foregroundColor(Color(.systemBlue))
                                .frame(width: 72, height: 72)
                                .foregroundColor(Color(.systemGray4))
                        }
                        Text("VGDC")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding()
        }
        .frame(height: 106)
    }
}

struct YourGroupsFeedView_Previews: PreviewProvider {
    static var previews: some View {
        YourGroupsFeedView()
    }
}
