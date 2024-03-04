//
//  InboxRowView.swift
//  TikTok
//
//  Created by Chris Min on 04/03/2024.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 35, height: 35)
            
            HStack {
                Text("james_smith")
                    .font(.subheadline)
                    .bold()
                
                +
                
                Text(" liked one of your posts..... ")
                    .font(.footnote)
                
                +
                
                Text("3d")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            Rectangle()
                .frame(width: 50, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 6))
        }
        .padding(.horizontal)
    }
}

#Preview {
    InboxRowView()
}
