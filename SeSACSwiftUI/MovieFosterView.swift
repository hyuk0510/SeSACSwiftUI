//
//  MovieFosterView.swift
//  SeSACSwiftUI
//
//  Created by 선상혁 on 2023/11/14.
//

import SwiftUI

struct MovieFosterView: View {
    @State private var movieList = ["극한직업", "어벤져스엔드게임", "암살"]
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                ZStack {
                    Image("부산행")
                        .resizable()
                        .ignoresSafeArea()
                        .scaledToFill()
                    
                    Image("background")
                        .resizable()
                    
                    VStack {
                        HStack(alignment: .center, spacing: 20) {
                            Text("N")
                                .font(.system(size: 40, weight: .heavy, design: .default))
                                .foregroundStyle(.white)

                            Text("TV 프로그램")
                                .font(.system(size: 15, weight: .bold, design: .default))
                                .foregroundStyle(.white)
                            
                            Text("영화")
                                .font(.system(size: 15, weight: .bold, design: .default))
                                .foregroundStyle(.white)
                            
                            Text("내가 찜한 콘텐츠")
                                .font(.system(size: 15, weight: .bold, design: .default))
                                .foregroundStyle(.white)
                        }
                        Spacer()
                        
                        HStack(alignment: .center, spacing: 20) {
                            Button(action: {
                                
                            }, label: {
                                VStack {
                                    Image("check")
                                    Text("내가 찜한 콘텐츠")
                                        .font(.system(size: 15, weight: .regular, design: .default))
                                        .foregroundStyle(.white)
                                }
                                
                            })
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                            
                            Button(action: {
                                
                            }, label: {
                                Image("play_normal")
                            })
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)

                            Button(action: {
                                
                            }, label: {
                                VStack{
                                    Image("info")
                                    Text("정보")
                                        .font(.system(size: 15, weight: .regular, design: .default))
                                        .foregroundStyle(.white)
                                }
                            })
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)

                        }
                        
                    }
                }
                
                Text("미리보기")
                    .font(.system(size: 17, weight: .bold, design: .default))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)

                HStack {
                    MovieImage(movieTitle: $movieList[0])
                    MovieImage(movieTitle: $movieList[1])
                    MovieImage(movieTitle: $movieList[2])
                }
            }
           
        }
    }
}

#Preview {
    MovieFosterView()
}

struct MovieImage: View {
    
    @Binding var movieTitle: String
    
    var body: some View {
        Image(movieTitle)
            .resizable()
            .scaledToFit()
            .border(.gray, width: 2)
            .clipShape(Circle())
            .overlay(Circle().stroke(.gray, lineWidth: 2.0))
    }
}
