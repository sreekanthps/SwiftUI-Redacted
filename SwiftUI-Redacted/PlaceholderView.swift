//
//  PlaceholderView.swift
//  SwiftUI-Redacted
//
//  Created by sreekanth Pulicherla on 14/1/25.
//

import SwiftUI

struct PlaceholderView: View {
    var body: some View {
        List(0..<10, id: \.self) { _ in
            HStack {
                Image(systemName: "house").resizable().scaledToFit().frame(width: 100, height: 100)
                VStack(alignment: .leading) {
                    Text("My image title").font(.headline)
                    Text("My image description").font(.subheadline)
                    
                }
            }
            
        }.redacted(reason: .placeholder)
    }
}
#Preview {
    PlaceholderView()
}
