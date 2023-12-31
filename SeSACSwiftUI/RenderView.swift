//
//  RenderView.swift
//  SeSACSwiftUI
//
//  Created by 선상혁 on 2023/11/13.
//

import SwiftUI

struct RenderView: View {
    // 시스템에서 정의된 값을 감지하고 뷰를 업데이트 할 수 있음
//    @Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) var dismiss
    @Environment(\.colorScheme) var colorScheme
    
    @State var age = 10
    
    init(age: Int = 10) {
        self.age = age
        print("RenderView Init")
    }
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.cyan, Color.white]), startPoint: .bottomLeading, endPoint: .topTrailing)
                        )
                    RoundedRectangle(cornerRadius: 30)
                        .fill(
                            RadialGradient(gradient: Gradient(colors: [Color.orange, Color.yellow]), center: .center, startRadius: 10, endRadius: 50)
                        
                        
                        )
                    RoundedRectangle(cornerRadius: 30)
                        .fill(
                            AngularGradient(colors: [Color.green, Color.white, .red], center: .center, angle: Angle(degrees: 0))
                        )
                }
                .frame(width: .infinity, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
                NavigationLink("Push") {
                    MenuView()
                }
                Text("Hue: \(age) \(Int.random(in: 1...100))")
                Text("Jack: \(Int.random(in: 1...100))")
                bran
                kokoView()
                Button(colorScheme == .dark ? "다크모드 클릭" : "라이트모드 클릭") {
                    
                    dismiss.callAsFunction()
                }
                .background(colorScheme == .dark ? .black : .gray)
                .foregroundStyle(colorScheme == .dark ? .white : .yellow)
            }
            .navigationTitle("네비게이션 타이틀")
            .navigationBarItems(leading: NavigationLink("클릭") {
                ContentView()
            })
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
