//
//  NavigationLazyView.swift
//  SeSACSwiftUI
//
//  Created by 선상혁 on 2023/11/16.
//

import SwiftUI

struct NavigationLazyView<T: View>: View {
    
    let build: () -> T
    
    init(build: @escaping () -> T) {
        self.build = build
    }
    
    var body: some View {
        build()
    }
}
