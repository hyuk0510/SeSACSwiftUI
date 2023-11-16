//
//  PosterView.swift
//  SeSACSwiftUI
//
//  Created by 선상혁 on 2023/11/15.
//

import SwiftUI
/*
 ScrollView
 LazyVStack vs VStack
 List
 AsyncImage (iOS15)
 */
struct PosterView: View {
    
    @State private var isPresented = false
    
    var body: some View {
        ScrollView(showsIndicators: true) {
            LazyVStack {
                ForEach(0..<50) { item in
                    AsyncImageView()
                        .frame(width: 100, height: 100)
                        .onTapGesture {
                            isPresented.toggle()
                        }
                }
            }
//            .frame(maxWidth: .infinity)
        }
        .background(.gray)
        .sheet(isPresented: $isPresented, content: {
            CategoryView()
        })
//        .contentMargins(50, for: .scrollContent)
    }
}

struct AsyncImageView: View {
    
    let url = URL(string: "https://picsum.photos/200")
    
    var body: some View {
        AsyncImage(url: url) { data in
            switch data {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            case .failure(_):
                Image(systemName: "star")
            @unknown default:
                Image(systemName: "star")
            }
        }
        

    }
}

#Preview {
    PosterView()
}

//AsyncImage(url: url) { image in
//    image
//        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//        .scaledToFit()
//        .clipShape(RoundedRectangle(cornerRadius: 20))
//} placeholder: {
////            Image(systemName: "star")
//    ProgressView()
