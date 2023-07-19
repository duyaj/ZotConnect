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
    let profile: String?
    
    init(name: String? = "NO NAME", type: String? = "NO TYPE", profile: String? = "") {
        self.name = name
        self.type = type
        self.profile = profile
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
            AsyncImage(url: URL(string: "https://storage.googleapis.com/zotconnect-d3690.appspot.com/orgProfile/test.png"), content: { image in
                
                image.resizable()
                
                
            }, placeholder: {
                
            })
            .frame(width:48, height: 48)
            .clipShape(Circle())
            
            
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


