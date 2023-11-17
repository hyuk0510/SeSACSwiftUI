//
//  GridView.swift
//  SeSACSwiftUI
//
//  Created by 선상혁 on 2023/11/17.
//

import SwiftUI

struct GridView: View {
    
    @Binding var movie: [Movie]
    
    @State var dummy = Array(1...100).map { "오늘의 영화 순위 \($0)" }
    
//    private let layout = [
//        GridItem(.fixed(200)),
//        GridItem(.fixed(200))
//    ]
    
    private let layout = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: layout, content: {
                ForEach(dummy, id: \.self) { item in
                    ZStack {
                        Color.random()
                        Text(item)
                    }
                }
            })
            .padding()
        }
        .onAppear {
            dummy.insert("gd", at: 0)
        }
//        .task {
//            <#code#>
//        }
    }
}

#Preview {
    GridView(movie: .constant([
        Movie(name: "SF"),
        Movie(name: "스릴러"),
        Movie(name: "애니메이션"),
        Movie(name: "로맨스"),
        Movie(name: "액션"),
        Movie(name: "가족")
    ]))
}
