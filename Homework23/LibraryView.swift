//
//  LibraryView.swift
//  Homework23
//
//  Created by Aisaule Sibatova on 05.07.2023.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Ищете свою музыку?")
                    .bold()
                Text("Здесь появится купленная Вами в Itunes Store музыка.")
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .navigationTitle("Медиатека")
            .navigationBarItems(trailing: NavigationLink(
                destination: PlayListView()){Text("Править")})
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
