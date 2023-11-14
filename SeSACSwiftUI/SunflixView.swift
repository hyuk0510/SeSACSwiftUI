//
//  SunflixView.swift
//  SeSACSwiftUI
//
//  Created by 선상혁 on 2023/11/14.
//

import SwiftUI

struct SunflixView: View {
    
    @State private var titles = ["이메일 주소 또는 전화번호", "비밀번호", "닉네임", "위치", "추천 코드 입력"]
    
    @State private var isOn = true
    
    var body: some View {
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                Text("SUNFLIX")
                    .padding()
                    .font(.system(.largeTitle, design: .default, weight: .bold))
                    .foregroundStyle(.red)
                
                Spacer()
                
                textFieldView(title: $titles[0])
                textFieldView(title: $titles[1])
                textFieldView(title: $titles[2])
                textFieldView(title: $titles[3])
                textFieldView(title: $titles[4])
                Button("회원가입", action: {
                    
                })
                .font(.system(size: 17, weight: .bold, design: .default))
                .frame(width: 300, height: 50)
                .clipShape(.buttonBorder)
                .foregroundStyle(.black)
                .background(.white)
                .multilineTextAlignment(.center)
                .clipShape(.buttonBorder)
                .buttonStyle(.plain)
                
                Toggle(isOn: $isOn){
                    Text("추가 정보 입력")
                        .foregroundStyle(.white)
                }
                .tint(.red)
                .frame(width: 300)
                
                
                Spacer()
                Spacer()
            }
        }
        

    }
}

#Preview {
    SunflixView()
}

struct textFieldView: View {
    
    @Binding var title: String
    
    var body: some View {
        TextField("", text: $title)
            .font(.system(size: 15))
            .frame(width: 300, height: 40)
            .background(.gray)
            .foregroundStyle(.white)
            .clipShape(.buttonBorder)
            .multilineTextAlignment(.center)
            .textFieldStyle(.plain)
    }
}
