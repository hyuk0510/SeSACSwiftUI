//
//  StartView.swift
//  SeSACSwiftUI
//
//  Created by 선상혁 on 2023/11/15.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        TabView {
            Text("1")
                .tabItem {
                    Text("홈 화면")
                    Image(systemName: "house.fill")
                }
            Text("2")
                .tabItem {
                    Text("검색 화면")
                    Image(systemName: "pencil")
                }
            Text("3")
                .tabItem {
                    Text("설정 화면")
                    Image(systemName: "star")
                }
        }
    }
}

#Preview {
    StartView()
}
