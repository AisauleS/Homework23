//
//  TabbarView.swift
//  Homework23
//
//  Created by Aisaule Sibatova on 05.07.2023.
//

import SwiftUI

struct TabbView: View {
    var body: some View {
        ZStack{
            TabView {
                LibraryView()
                    .tabItem {
                        Image(systemName: "rectangle.stack.badge.play.fill")
                        Text("Медиатека")
                    }
                
                RadioView()
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                
                Text("Поиск")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .accentColor(.red)
            .safeAreaInset(edge: .bottom){ playerButtomSheet()}
        }
    }
    
    @ViewBuilder
    func playerButtomSheet()-> some View {
        ZStack {
            Rectangle()
                .fill(.ultraThickMaterial)
                .overlay{MusicInfo()}
        }
        .frame(height: 70)
        .overlay(alignment: .bottom, content: {
            Rectangle()
                .fill(.gray.opacity(0.3))
                .frame(height: 1)
        })
        .offset(y: -49)
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TabbView()
        }
    }
}


