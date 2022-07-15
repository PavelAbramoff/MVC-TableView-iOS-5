//
//  ViewController.swift
//  MVC-TableView-iOS-5
//
//  Created by Pavel Абрамов on 08.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTabButtonOne() {
        
        let vc = UITableViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

