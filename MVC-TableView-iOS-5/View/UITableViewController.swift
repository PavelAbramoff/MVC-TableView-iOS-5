//
//  UITableViewController.swift
//  MVC-TableView-iOS-5
//
//  Created by Pavel Абрамов on 10.07.2022.
//

import UIKit

class TableViewController: UIViewController {
    
    private let model = Model.cellList()
    
    private var myTableView: MyTableView? {
        guard isViewLoaded else { return nil }
        return view as? MyTableView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = MyTableView(controller: self)
    }
}



