//
//  GroupProfileVIew.swift
//  ZotConnect
//
//  Created by Jonathan Duya on 7/16/23.
//

import SwiftUI

struct GroupProfileView: View {
    let name: String?
    let type: String?
    let desc: String?
    let local: String?
    let link: String?
    let memNum: Int?
    
    init(name: String? = "name", type: String? = "type", desc: String? = "description", local: String? = "location", link: String? = "link", memNum: Int? = 0) {
        self.name = name
        self.type = type
        self.desc = desc
        self.local = local
        self.link = link
        self.memNum = memNum
    }
    
    @Environment(\.presentationMode) var mode
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            groupInfoDetails
            
            .padding(.vertical)
            .padding(.vertical)
            .padding(.horizontal)
            Spacer()
        }
    }
}

struct GroupProfileView_Previews: PreviewProvider {
    static var previews: some View {
        GroupProfileView()
    }
}

extension GroupProfileView {
    
    
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack {
                Button {
                    mode.wrappedValue.dismiss()
                } label : {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(x: 16, y: 12)
                }
                
                Circle()
                    .frame(width: 72, height: 72)
                    .offset(x: 16, y: 24)
            }
        }
        .frame(height: 96)
    }
    
    var groupInfoDetails: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text(name!)
                    .font(.title2).bold()
            }
            Text(type!)
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text(desc!)
                .font(.subheadline)
                .padding(.vertical)
            
            HStack(spacing: 32) {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    Text(local!)
                }
                
                HStack {
                    Image(systemName: "link")
                    Text(LocalizedStringKey(link!))
                }
            }
            .font(.caption)
            .foregroundColor(.gray)
            
            HStack(spacing: 24) {
                HStack(spacing: 4) {
                    Text(String(memNum!))
                        .font(.subheadline)
                        .bold()
                    
                    Text("Members")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .padding(.vertical)
        }
    }
}

