//
//  Model.swift
//  MVC-TableView-iOS-5
//
//  Created by Pavel Абрамов on 08.07.2022.
//

import Foundation

struct Model {
    let imageCell: String?
    let textCell: String?
}

class ModelAPI {
    static func cellList() -> [Model] {
       let model = [
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
        return model
    }
}

