//
//  ViewController.swift
//  Sheet
//
//  Created by Ömer Faruk Kılıçaslan on 12.07.2022.
//

import UIKit



class ViewController: UIViewController {

    private let tableView: UITableView = {
       
        let table = UITableView()
        
        table.register(BasicTableViewCell.self, forCellReuseIdentifier: BasicTableViewCell.identifier)
        
        table.register(CenterImageTableViewCell.self, forCellReuseIdentifier: CenterImageTableViewCell.identifier)
        
        table.register(OnlyImageViewTableViewCell.self, forCellReuseIdentifier: OnlyImageViewTableViewCell.identifier)
        
        
        
        
        return table
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row < 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: BasicTableViewCell.identifier, for: indexPath) as! BasicTableViewCell
            cell.textLabel?.text = "Hello World, I am basic cell"
            return cell
        }
        
        else if indexPath.row < 6 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: CenterImageTableViewCell.identifier, for: indexPath) as! CenterImageTableViewCell
            cell.configure()
            return cell
            
        }
        
        else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: OnlyImageViewTableViewCell.identifier, for: indexPath) as! OnlyImageViewTableViewCell
            cell.configure()
            return cell
            
            
        }
        
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

