//
//  DiscoverRowView.swift
//  ZotConnect
//
//  Created by Jonathan Duya on 7/16/23.
//

import SwiftUI

struct DiscoverRowView: View {
    let name: String?
    let type: String?
    
    init(name: String? = "NO NAME", type: String? = "NO TYPE") {
        self.name = name
        self.type = type
    }
    
    var body: some View {
        HStack(spacing: 12) {
            Circle()
                .frame(width: 48, height: 48)
                .foregroundColor(Color(.systemBlue))
            
            VStack(alignment: .leading, spacing: 4) {
                Text(self.name!)
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                
                Text(self.type!)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct DiscoverRowView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverRowView()
    }
}
