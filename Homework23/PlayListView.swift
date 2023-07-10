//
//  PlayListView.swift
//  Homework23
//
//  Created by Aisaule Sibatova on 05.07.2023.
//

import SwiftUI

struct PlayListView: View {
    
    @Environment(\.dismiss) private var dismiss
    @State private var isChecked = false
    @State private var playList = PlayList.preview()
    
    var body: some View {
        VStack {
            List {
                ForEach (playList, content: {playList in
                    
                    HStack {
                        Image(systemName:  playList.isChecked ? "checkmark.circle.fill" :  "circle")
                            .resizable()
                            .frame(width: 16, height: 16)
                            .foregroundColor(.red)
                        
                        Image(systemName: playList.coverImage)        .foregroundColor(.red)
                            .frame(width: 16, height: 16)
                            .padding(.trailing, 8)
                        
                        Text(playList.title)
                    }})
                    .onMove{(source: IndexSet, to: Int) in
                        playList.move(fromOffsets: source, toOffset: to)}
            }
            .environment(\.editMode, .constant(.active))
            .navigationBarBackButtonHidden(true)
            .navigationTitle("Медиатека")
            .navigationBarItems(trailing: Button("Готово") {
                dismiss()})
            .listStyle(.plain)
        }.padding(.leading, -32)
    }
}

struct PlayListView_Previews: PreviewProvider {
    static var previews: some View {
        PlayListView()
    }
}
