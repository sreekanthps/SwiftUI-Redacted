//
//  ListItemView.swift
//  SwiftUI-Redacted
//
//  Created by sreekanth Pulicherla on 15/1/25.
//

import SwiftUI

struct ListItemView: View {
    
    @State var isLoading: Bool = true
    @State var imageName = "square"
    @State var title = "Place Holder"
    @State var description = "Placeholder"
    var body: some View {
        VStack {
            if isLoading {
                content.redacted(reason: .placeholder)
            } else {
                content
            }
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                isLoading = false
                imageName = "house"
                title = "Image Title"
                description = "Image Description"
            }
        }
    }
    
    var content: some View {
        HStack {
            Image(systemName: "house").resizable().scaledToFit().frame(width: 100, height: 100)
            VStack(alignment: .leading) {
                Text("My image title").font(.headline)
                Text("My image description").font(.subheadline)
                
            }
        }
    }
}

struct ListViewPlaceHolder: View {
    var body: some View {
        List(0..<10, id: \.self) { _ in
            ListItemView()
        }
        
    }
}

#Preview {
    ListViewPlaceHolder()
}
