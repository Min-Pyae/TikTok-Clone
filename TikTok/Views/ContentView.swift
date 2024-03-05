//
//  ContentView.swift
//  TikTok
//
//  Created by Chris Min on 04/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab = 0
    
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                            .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                        Text("Home")
                    }
                }
                .onAppear {
                    selectedTab = 0
                }
                .tag(0)
            
            FriendsView()
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab == 1 ? "person.2.fill" : "person.2")
                            .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                        Text("Friends")
                    }
                }
                .onAppear {
                    selectedTab = 1
                }
                .tag(1)
            
            Text("Home")
                .tabItem {
                    VStack {
                        Image(systemName: "plus")
                    }
                }
                
            
            InboxView()
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab == 2 ? "heart.fill" : "heart")
                            .environment(\.symbolVariants, selectedTab == 2 ? .fill : .none)
                        Text("Inbox")
                    }
                }
                .onAppear {
                    selectedTab = 2
                }
                .tag(2)
            
            ProfileView()
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab == 3 ? "person.fill" : "person")
                            .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                        Text("Profile")
                    }
                }
                .onAppear {
                    selectedTab = 3
                }
                .tag(3)
        }
        .tint(.black)
    }
}

#Preview {
    ContentView()
}
