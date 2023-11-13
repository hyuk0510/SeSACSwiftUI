//
//  ContentView.swift
//  SeSACSwiftUI
//
//  Created by 선상혁 on 2023/11/13.
//

import SwiftUI

//modifier

//Generic: 사용할 때 타입을 구체적으로 지정
//some: Opaque type (5.1) 역제네릭 타입

//1. modifier
//2. 뷰가 매번 반환된다
//3. modifier 순서

//생성할 당시에는 어떤 타입인지 모르고, 사용할 때 구체적인 타입을 정의
//some 사용할 떄 오히려 이미 알고 있는 타입을 거꾸로 숨김

struct ContentView: View {
    
    let a: Array<String> = Array<String>()
    let b: Array<Int> = [2, 3, 4]
    
    var body: some View {
        
        VStack {
            Text("abcdefg")
                .foregroundStyle(Color.white)
                .font(.largeTitle)
                .background(Color.black)
                .padding()
                .background(Color.green)
                .border(.blue, width: 10)
            .border(Color.orange)
            
            Text("abcdefg")
                .foregroundStyle(Color.white)
                .font(.largeTitle)
                .background(Color.black)
                .padding()
                .background(Color.green)
                .border(.blue, width: 10)
                .border(Color.orange)
        }
        
        
        
//        Button("Hello") {
//            let value = type(of: self.body)
//            print(value)
//        }
//        .foregroundStyle(.red)
//        .background(.black)
        

            
    }
}

#Preview {
    ContentView()
}


