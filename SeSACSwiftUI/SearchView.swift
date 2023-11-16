//
//  SearchView.swift
//  SeSACSwiftUI
//
//  Created by 선상혁 on 2023/11/16.
//

import SwiftUI

//struct SearchView: View {
//    
//    @State var randomNumber = 0
//    
//    init(randomNumber: Int = 0) {
//        self.randomNumber = randomNumber
//        print("SearchView init")
//    }
//    
//    var body: some View {
//        VStack {
//            HueView()
//            jackView
//            kokoView()
//            Text("Bran \(randomNumber)")
//                .background(Color.random())
//            Button("클릭") {
//                randomNumber = Int.random(in: 1...100)
//            }
//        }
//    }
//    
//    var jackView: some View {
//        Text("Jack")
//            .background(Color.random())
//    }
//    
//    func kokoView() -> some View {
//        Text("Koko")
//            .background(Color.random())
//    }
//}

struct Movie: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let color = Color.random()
}

struct SearchView: View {
    
    @State var searchText = ""
    
    let movie = [
        Movie(name: "어벤져스"), Movie(name: "가나다라"),
        Movie(name: "asdf"), Movie(name: "1234"),
        Movie(name: "ㅡㅏㅡㅏ"), Movie(name: "?!@#!"),
        Movie(name: "어벤져스2"), Movie(name: "으으으으"),
        Movie(name: "어벤져스3"), Movie(name: "~~~₩₩₩₩₩")
    ]
    
    var filterMovie: [Movie] {
        return searchText.isEmpty ? movie : movie.filter { $0.name.contains(searchText) }
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(filterMovie, id: \.id) { item in
                    //                    NavigationLink {
                    //                        SearchDetailView(movie: item)
                    //                    } label: {
                    //                        HStack {
                    //                            Circle()
                    //                                .foregroundStyle(item.color)
                    //                            Text(item.name)
                    //                        } // HStack
                    //                        .frame(height: 60)
                    //
                    //                    } // NavigationLink
                    NavigationLink(value: item) {
                        HStack {
                            Circle().foregroundStyle(item.color)
                            Text(item.name)
                        }
                        .frame(height: 60)
                    }
                    
                } // ForEach
                
            } // List
            .navigationTitle("검색")
            .navigationDestination(for: Movie.self) { item in
                SearchDetailView(movie: item)
            }
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer, prompt: "검색어를 입력해주세요")
        .onSubmit(of: .search) {
            print("검색")
        }
    }
}

struct SearchDetailView: View {
    
    let movie: Movie
    
    var body: some View {
        VStack {
            Text(movie.name)
            Button("기본 버튼") {
                print("ASDF")
            }
            Button(action: {
                print("QWRER")
            }, label: {
                HStack {
                    Circle().foregroundStyle(Color.red)
                    Text("Button")
                }
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 40)
            })
        }
        .navigationTitle(movie.name)

    }
}

#Preview {
    SearchView()
}

struct HueView: View {
    
    init() {
        print("HueView init")
    }
    
    var body: some View {
        Text("Hue")
            .background(Color.random())
    }
}

extension Color {
    static func random() -> Color {
        return Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1))
    }
}
