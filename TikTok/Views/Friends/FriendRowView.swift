//
//  FriendRowView.swift
//  TikTok
//
//  Created by Chris Min on 04/03/2024.
//

import SwiftUI

struct FriendRowView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundStyle(.gray)
            
            VStack(alignment: .leading) {
                Text("test_user")
                    .font(.subheadline)
                    .bold()
                
                Text("Test User")
                    .font(.footnote)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    FriendRowView()
}
