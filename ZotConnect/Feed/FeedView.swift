//
//  FeedView.swift
//  ZotConnect
//
//  Created by Jonathan Duya on 7/15/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
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
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
