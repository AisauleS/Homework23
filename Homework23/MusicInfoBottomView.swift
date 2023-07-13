//
//  MusicInfoBottomView.swift
//  Homework23
//
//  Created by Aisaule Sibatova on 10.07.2023.
//

import SwiftUI

struct MusicInfo: View {
    var body: some View {
        HStack(spacing: 0) {
            RoundedRectangle(cornerRadius: 5)
                .fill(.ultraThinMaterial)
                .frame(width: 50, height: 50)
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                .padding()
                .overlay(Image(systemName: "music.note"))
            
            Text("Не исполняется").font(.body).padding().offset(x:-10)
            Image(systemName: "play.fill").padding()
            Image(systemName: "forward.fill").foregroundColor(.gray).offset(x:-10)
        }
    }
}
