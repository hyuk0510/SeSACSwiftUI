//
//  MovieView.swift
//  SeSACSwiftUI
//
//  Created by 선상혁 on 2023/11/14.
//

import SwiftUI

struct MovieView: View {
    
    @State private var isPresented = false
    
    var body: some View {
       
        ZStack {
//            Color.blue
            Image("dog")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
            Image("dog")
                .resizable()
                .frame(width: 200, height: 200)
                .border(.white, width: 5)
                .clipShape(.buttonBorder, style: FillStyle())
            Text("zzz")
                .font(.largeTitle)
                .foregroundStyle(.white)
            
            VStack {
                Button("SHOW") {
                    isPresented = true
                }
                .padding()
                .background(.gray)
                Spacer()
                HStack {
                    Circle()
                    Circle()
                    Circle()
                }
            }
            
            }
        .sheet(isPresented: $isPresented, content: {
            TamagotchiView()
        })
//        .fullScreenCover(isPresented: $isPresented, content: {
//            TamagotchiView()
//        })
//        Spacer()
//        HStack {
//            Image("dog")
//                .resizable()
//            .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//            
//            Image("dog")
//                .resizable()
//            .frame(width: 100, height: 100)
//            
//            Image("dog")
//                .resizable()
//            .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//        }
    }
}

#Preview {
    MovieView()
}
