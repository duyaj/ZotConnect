//
//  DiscoverView.swift
//  ZotConnect
//
//  Created by Jonathan Duya on 7/15/23.
//

import SwiftUI

struct DiscoverView: View {
    @ObservedObject var Orgs = OrgViewModel()
    @State private var searchText = ""
    
    init() {
        Orgs.getOrgs()
    }
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBarView(text: $searchText)
                    .padding()
                ScrollView {
                    LazyVStack {
                        ForEach(Orgs.orgList) {org in NavigationLink {
                            GroupProfileView(name: org.name, type: org.type, desc: org.desc, location: org.location, link: org.link, memNum: org.memberNum)
                        } label: {
                            DiscoverRowView(name: org.name, type: org.type)}
                        }
                    }
                }
            }
            .navigationTitle("Discover")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
