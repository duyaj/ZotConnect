//
//  GroupProfileVIew.swift
//  ZotConnect
//
//  Created by Jonathan Duya on 7/16/23.
//

import SwiftUI

struct GroupProfileView: View {
    let org: Org
    
    @ObservedObject var viewModel : GroupProfileViewModel
    @State private var selectedOption: PostType = .announcements
    @Namespace var animation
    
    init(org: Org) {
        self.org = org
        self.viewModel = GroupProfileViewModel(org: org)
    }
    
    @Environment(\.presentationMode) var mode
    var body: some View {
        VStack(alignment: .leading) {
            
            headerView
            groupInfoDetails
            .padding(.vertical)
            .padding(.horizontal)
            postCategories
            ForEach(viewModel.orgAnnouncements) { post in
                Text(post.id)
            }
            Spacer()
        }
    }
}

struct GroupProfileView_Previews: PreviewProvider {
    static var previews: some View {
        GroupProfileView(org: Org())
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
                        .offset(y: 12)
                }
                
                AsyncImage(url: URL(string: org.profile), content: { image in
                    
                    image.resizable()
                    
                    
                    
                    
                }, placeholder: {
                    
                })
                .frame(width:80, height: 80)
                .clipShape(Circle())
                .offset(x: 17, y: 25)
            }
        }
        .frame(height: 96)
    }
    
    var groupInfoDetails: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text(org.name)
                    .font(.title2).bold()
            }
            Text(org.type)
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text(org.desc)
                .font(.subheadline)
                .padding(.vertical)
            
            HStack(spacing: 32) {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    Text(org.location)
                }
                
                HStack {
                    Image(systemName: "link")
                    Text(LocalizedStringKey(org.link))
                }
            }
            .font(.caption)
            .foregroundColor(.gray)
            
            HStack(spacing: 24) {
                HStack(spacing: 4) {
                    Text(String(org.memberNum))
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
    
    var postCategories: some View {
            HStack {
                ForEach(PostType.allCases, id: \.rawValue) { option in
                    VStack {
                        Text(option.title)
                            .fontWeight(selectedOption == option ? .semibold : .regular)
                            .foregroundColor(selectedOption == option ? .black : .gray)
                        if selectedOption == option {
                            Capsule()
                                .foregroundColor(Color(.systemBlue))
                                .frame(height: 3)
                                .matchedGeometryEffect(id: "filter", in: animation)
                        }
                        else {
                            Capsule()
                                .foregroundColor(Color(.clear))
                                .frame(height: 3)
                        }
                    }
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            self.selectedOption = option
                        }
                    }
                }
                Spacer()
            }
    }
}

    

