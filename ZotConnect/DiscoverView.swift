//
//  DiscoverView.swift
//  ZotConnect
//
//  Created by Jonathan Duya on 7/15/23.
//

import SwiftUI

struct DiscoverView: View {
    @ObservedObject var Orgs = OrgViewModel()
    
    init() {
        Orgs.getOrgs()
    }
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBarView(text: $Orgs.searchText)
                    .padding()
                ScrollView {
                    LazyVStack {
                        ForEach(Orgs.searchedOrgs) {org in NavigationLink {
                            GroupProfileView(org: org)
                        } label: {
                            DiscoverRowView(org: org)}
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
