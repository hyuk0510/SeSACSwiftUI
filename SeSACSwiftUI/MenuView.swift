//
//  MenuView.swift
//  SeSACSwiftUI
//
//  Created by 선상혁 on 2023/11/13.
//

import SwiftUI

struct MenuView: View {
    
    var cardProperty: some View {
        VStack(spacing: 10) {
            Image(systemName: "star")
                .background(.red)
            Text("text")
                .background(.green)
        }
        .padding()
        .background(.yellow)
    }
    
    var body: some View {
        
        VStack {
            HStack(spacing: 20) {
                cardProperty
                CardView(image: "person", text: "토스증권")
                CardView(image: "pencil", text: "고객센터")
            }
            List {
                Section("자산") {
                    Text("보안과 인증")
                        .modifier(PointBorderText())
                    DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                    Text("내 신용점수")
                        .asPointBorderText()
                    ColorPicker("컬러 설정", selection: /*@START_MENU_TOKEN@*/.constant(.red)/*@END_MENU_TOKEN@*/)
                    Text("진행 중인 이벤트")
                }
                
                Section("ㅋㅋ") {
                    Text("오오오오")
                    Text("개꿀이네")
                    Text("스유만세")
                }
                
            }
            .listStyle(.plain)
        }
        
        
    }
}

#Preview {
    MenuView()
}

struct CardView: View {
    let image: String
    let text: String
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: image)
                .background(.red)
            Text(text)
                .background(.green)
                .underline()
                .strikethrough()
        }
        .padding()
        .background(.yellow)
    }
}

//custom modifier
struct PointBorderText: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .padding(10)
            .foregroundStyle(.white)
            .background(.purple)
            .clipShape(.capsule)
    }
    
}

extension View {
    
    func asPointBorderText() -> some View {
        modifier(PointBorderText())
    }
}
