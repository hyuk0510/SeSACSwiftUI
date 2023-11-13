//
//  RenderView.swift
//  SeSACSwiftUI
//
//  Created by 선상혁 on 2023/11/13.
//

import SwiftUI

struct RenderView: View {
    
    @State var age = 10
    
    var body: some View {
        VStack {
            Text("Hue: \(age) \(Int.random(in: 1...100))")
            Text("Jack: \(Int.random(in: 1...100))")
            bran
            kokoView()
            Button("클릭") {
                age = Int.random(in: 1...100)
            }
        }
    }
    
    var bran: some View {
        Text("Bran: \(Int.random(in: 1...100))")

    }
}

#Preview {
    RenderView()
}

struct kokoView: View {
    var body: some View {
        Text("Koko: \(Int.random(in: 1...100))")
    }
}
