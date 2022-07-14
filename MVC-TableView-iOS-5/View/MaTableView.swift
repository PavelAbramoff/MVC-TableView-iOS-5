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
    private var model = Model.cellList()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
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
        setupView()
        setupHierarchy()
        setupLayout()
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
}

func setupData(result: Int) {
    print(result)
}

extension MyTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let list = [Model]()
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "imageCell", for: indexPath)
        let text = model[indexPath.row]
        
        cell.textLabel?.text = text.textCell
        cell.textLabel?.numberOfLines = 2
        cell.detailTextLabel?.text = text.imageCell
        
        cell.imageView?.image = UIImage(named: text.title)
        cell.imageView?.layer.cornerRadius = tableView.rowHeight / 2
        cell.imageView?.clipsToBounds = true
        
        return cell
    }
}

extension MyTableView: UITableViewDelegate {
}

