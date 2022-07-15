//
//  MaTableView.swift
//  MVC-TableView-iOS-5
//
//  Created by Pavel Абрамов on 09.07.2022.
//

import UIKit

class MyTableView: UIView {
    
    // MARK: - Elemets
    
    private var controller: TableViewController?
    
    private var models = ModelAPI.cellList()
    let tableView = UITableView()
    
//    private lazy var tableView: UITableView = {
//        let tableView = UITableView()
//        tableView.translatesAutoresizingMaskIntoConstraints = false
//        return tableView
//    }()
    
    // MARK: - Lifecucle
    
    init(controller: TableViewController) {
        super.init(frame: .zero)
        self.controller = controller
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupHierarchy()
        setupLayout()
        setupView()
    }
    
    // MARK: - private function
    
    private func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .white
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "imageCell")
        tableView.rowHeight = 100
        
    }
    
    private func setupHierarchy() {
        addSubview(tableView)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
    func setupData(data: [Model]) {
        models = data
        tableView.reloadData()
    }
}

extension MyTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "imageCell", for: indexPath) as! ModelTableViewCell
        
        cell.model = models[indexPath.row]
        
        return cell
    }
}

extension MyTableView: UITableViewDelegate {
}

