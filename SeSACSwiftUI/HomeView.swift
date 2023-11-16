//
//  HomeView.swift
//  SeSACSwiftUI
//
//  Created by 선상혁 on 2023/11/15.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        ScrollView {
            VStack(spacing: 50) {
                ScrollView(.horizontal) {
                    LazyHStack {
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                    }
                }
                ScrollView(.horizontal) {
                    LazyHStack {
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                    }
                }
                ScrollView(.horizontal) {
                    LazyHStack {
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                    }
                }
                ScrollView(.horizontal) {
                    LazyHStack {
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                        AsyncImageView()
                    }
                }
            }
        }
        

    }
}

#Preview {
    HomeView()
}
