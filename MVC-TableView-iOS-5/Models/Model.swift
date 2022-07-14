//
//  Model.swift
//  MVC-TableView-iOS-5
//
//  Created by Pavel Абрамов on 08.07.2022.
//

import Foundation

struct Model {
    let imageCell: String // artist
    let textCell: String // song
    
    var title: String {
        "\(imageCell) - \(textCell)"
    }
}

extension Model {
    static func cellList() -> [Model] {
        [
            Model(imageCell: "Model", textCell: "Model"),
            Model(imageCell: "View", textCell: "View"),
            Model(imageCell: "Controller", textCell: "Управленеи программой"),
            Model(imageCell: "Model", textCell: "Данные программы"),
            Model(imageCell: "View", textCell: "Отоброжение вида"),
            Model(imageCell: "Controller", textCell: "Управленеи программой"),
            Model(imageCell: "Данные программы", textCell: "Model"),
            Model(imageCell: "View", textCell: "View"),
            Model(imageCell: "Controller", textCell: "Управленеи программой"),
            Model(imageCell: "Model", textCell: "Данные программы"),
            Model(imageCell: "View", textCell: "Отоброжение вида"),
            Model(imageCell: "Controller", textCell: "Управленеи программой")
        ]
    }
}

