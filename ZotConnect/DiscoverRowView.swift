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
    
    func genColor() -> Color{
        let randomInt = Int.random(in: 1..<4)
        
        switch randomInt {
        case 1:
            return Color(.systemBlue)
        case 2:
            return Color(.systemRed)
        case 3:
            return Color(.systemYellow)
        default:
            return Color(.systemPink)
        }
    }
    
    var body: some View {
        HStack(spacing: 12) {
            Circle()
                .frame(width: 48, height: 48)
                .foregroundColor(genColor())
            
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


