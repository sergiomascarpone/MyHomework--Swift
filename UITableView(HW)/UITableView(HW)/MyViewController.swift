//
//  ViewController.swift
//  UITableView(HW)
//
//  Created by Sergio Mascarpone on 15.06.23.
//

import UIKit

class MyViewController: UIViewController {
    private enum Constants {
        static let reuseId: String = "Cell"
    }
    
    lazy var items: [Item] = {
        (0..<50).map { index in
            Item(title: "\(index + 1)",
                 subtitle: UUID().uuidString)
        }
    }()
    
    private lazy var tableView: UITableView = .init()
    
    override func loadView() {
        self.view = UIView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        
        tableView.backgroundColor = .cyan
        tableView.register(Cell.self, forCellReuseIdentifier: Constants.reuseId)
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.reloadData()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
}

extension MyViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.reuseId, for: indexPath)
        
        guard let cell = cell as? Cell else {
            return cell
        }
        
        let item = items[indexPath.row]
        cell.titleLabel?.text = item.title
        cell.subtitleLabel?.text = item.subtitle
        return cell
    }
}

extension MyViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        56
    }
}
