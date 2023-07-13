//
//  RadioModel.swift
//  Homework23
//
//  Created by Aisaule Sibatova on 11.07.2023.
//

import SwiftUI

struct RadioStation: Identifiable, Hashable {
    let id = UUID()
    let coverImage: String
    let title: String
    let subTitle: String
    let descriptionTitle = "Избранная радиостанция"

    static func preview () -> [RadioStation] {
        [
            RadioStation(coverImage: "radio1", title: "Популярное", subTitle: "То, что слушают прямо сейчас"),
            RadioStation(coverImage: "radio2", title: "Поп-музыка для тренировок", subTitle: "Вперед и с музыкой!"),
            RadioStation(coverImage: "radio3", title: "Электронная музыка", subTitle: "Пульт с лучшими треками"),
            RadioStation(coverImage: "radio4", title: "Танцевальная музыка", subTitle: "Современные и будущие хиты"),
            RadioStation(coverImage: "radio5", title: "Классика рока", subTitle: "Гении гитарного звука"),
            RadioStation(coverImage: "basta", title: "Музыкальный базар с Бастой", subTitle: "Новое шоу")
        ]
    }
}

