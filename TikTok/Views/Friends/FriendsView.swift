//
//  FriendsView.swift
//  TikTok
//
//  Created by Chris Min on 04/03/2024.
//

import SwiftUI

struct FriendsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 15) {
                    ForEach(1..<10) { _ in
                        FriendRowView()
                    }
                }
                .padding(.top)
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    FriendsView()
}
