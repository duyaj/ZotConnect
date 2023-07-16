//
//  ContentView.swift
//  ZotConnect
//
//  Created by Jonathan Duya on 7/15/23.
//
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "newspaper")
                }
            DiscoverView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            EventsView()
                .tabItem {
                    Image(systemName: "calendar")
                }
            GroupsView()
                .tabItem {
                    Image(systemName: "person.3.fill")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
