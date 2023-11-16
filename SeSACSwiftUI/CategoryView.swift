//
//  CategoryView.swift
//  SeSACSwiftUI
//
//  Created by 선상혁 on 2023/11/15.
//

import SwiftUI
/*
 ForEach
 - ..<
 - Swift KeyPath \.
 - id: KeyPath => item
 - Hashable
 */

struct Category: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let count: Int
}

struct CategoryView: View {
    
    let category = [
        Category(name: "스릴러", count: 10),
        Category(name: "액션", count: 35),
        Category(name: "SF", count: 22),
        Category(name: "애니메이션", count: 123),
        Category(name: "로맨스", count: 9),
        Category(name: "로맨스", count: 9),
        Category(name: "로맨스", count: 11)
    ]
    
    var body: some View {
        VStack {
            ForEach(category, id: \.id) { item in
                Text("\(item.name) \(item.count) 안녕하세요")
            }
        }
    }
}

#Preview {
    CategoryView()
}
