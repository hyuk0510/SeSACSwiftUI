//
//  TamagotchiView.swift
//  SeSACSwiftUI
//
//  Created by 선상혁 on 2023/11/14.
//

import SwiftUI

struct User {
    
    var nickname = "abcd"
    
    var introduce: String {
        mutating get{
            nickname = "하이"
            return "안녕하세요 \(nickname)입니다"
        }
    }
    
    mutating func changeNickname() {
        nickname = "가나다라"
    }
}

//앱에서 UI는 Data에 의존해서 자신의 상태를 결정하게 된다.


//@State. Source of Truth. View에 대한 상태를 저장하기 위한 목적.
//상태 프로퍼티(State Property)
//@Binding. Derived Value

struct TamagotchiView: View {
    
    @State private var waterCount = 0
    @State private var riceCount = 0
    
    @State private var isOn = false
    @State private var inputText = "안녕하세요"
    
    var body: some View {
        
            VStack {
                
                TextField("밥알 갯수 입력하기", text: $inputText)
                    .padding()
                
                Toggle("스위치", isOn: $isOn)
                    .padding()

                ExtractedView(title: "물방울", count: $waterCount)
                Button("물방울 갯수") {
                    //버튼 누르면 count 1 올라가기
                    waterCount += 1
                    isOn.toggle()
                }
                .padding(50)
                .background(.green)
                ExtractedView(title: "밥알", count: $riceCount)
                Button(action: {
                    riceCount += 1
                }, label: {
                    Text("밥알 갯수")
                        .padding(50)
                        .background(.yellow)
                })
                
            }
            .padding()
        
    }
}

#Preview {
    TamagotchiView()
}

struct ExtractedView: View {
    
    let title: String
    @Binding var count: Int
    
    var body: some View {
        HStack {
            Text("\(title) 갯수: \(count)개")
                .background(.black)
                .foregroundStyle(.white)
                .font(.title)
        }
        Button("하위뷰 버튼") {
            count += 1
        }
    }
}
