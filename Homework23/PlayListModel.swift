//
//  PlayListModel.swift
//  Homework23
//
//  Created by Aisaule Sibatova on 08.07.2023.
//

import SwiftUI

struct PlayList: Identifiable, Hashable {
    let id = UUID()
    let coverImage: String
    let title: String
    var isChecked: Bool

    static func preview () -> [PlayList] {
        [
            PlayList(coverImage: "music.note.list", title: "Плейлисты", isChecked: true),
            PlayList(coverImage: "music.mic", title: "Артисты", isChecked: false),
            PlayList(coverImage: "square.stack", title: "Альбомы", isChecked: false),
            PlayList(coverImage: "music.note", title: "Песни", isChecked: true),
            PlayList(coverImage: "tv", title: "Телешоу и фильмы", isChecked: false),
            PlayList(coverImage: "music.note.tv", title: "Видеоклипы", isChecked: false),
            PlayList(coverImage: "guitars", title: "Жанры", isChecked: false),
            PlayList(coverImage: "person.2.crop.square.stack.fill", title: "Сборники", isChecked: true),
            PlayList(coverImage: "music.quarternote.3", title: "Авторы", isChecked: false),
            PlayList(coverImage: "arrow.down.circle", title: "Загружено", isChecked: false),
        ]
    }
}
