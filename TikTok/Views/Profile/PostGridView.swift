//
//  PostGridView.swift
//  TikTok
//
//  Created by Chris Min on 04/03/2024.
//

import SwiftUI

struct PostGridView: View {
    
    private let columns = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible())
    ]
    
    private let width = (UIScreen.main.bounds.width / 3) - 2
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 1) {
            ForEach(0..<12) { _ in
                Rectangle()
                    .frame(width: width, height: 160)
            }
        }
    }
}

#Preview {
    PostGridView()
}
