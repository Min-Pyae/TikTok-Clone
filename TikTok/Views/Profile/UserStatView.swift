//
//  UserStatView.swift
//  TikTok
//
//  Created by Chris Min on 04/03/2024.
//

import SwiftUI

struct UserStatView: View {
    
    var value: Int
    var title: String
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.bold)
            
            Text(title)
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .frame(width: 80, alignment: .center)
    }
}

#Preview {
    UserStatView(value: 4, title: "Following")
}
