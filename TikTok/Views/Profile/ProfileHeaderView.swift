//
//  ProfileHeaderView.swift
//  TikTok
//
//  Created by Chris Min on 04/03/2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            // USER IMAGE
            VStack(spacing: 10) {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                
                Text("@chris.min")
                    .font(.subheadline)
                    .fontWeight(.bold)
            }
            
            // USER STATS VIEW
            HStack {
                UserStatView(value: 5, title: "Following")
                UserStatView(value: 10, title: "Followers")
                UserStatView(value: 7, title: "Likes")
            }
            
            // EDIT PROFILE BUTTON
            Button(action: {
                
            }, label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            })
        }
    }
}

#Preview {
    ProfileHeaderView()
}
