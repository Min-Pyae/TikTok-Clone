//
//  InboxView.swift
//  TikTok
//
//  Created by Chris Min on 04/03/2024.
//

import SwiftUI

struct InboxView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 25) {
                    ForEach(1..<10) { _ in
                        InboxRowView()
                    }
                }
                .padding(.top)
            }
            .navigationTitle("Notifications")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    InboxView()
}
