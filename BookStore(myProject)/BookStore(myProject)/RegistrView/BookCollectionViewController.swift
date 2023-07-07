//
//  BookCollectionViewController.swift
//  BookStore(myProject)
//
//  Created by Sergio Mascarpone on 1.06.23.
//

import UIKit

class BookCollectionViewController: UIViewController {
   
    //создание изображения
    let storeView: UIView = {
        let storeView = UIView()
        storeView.contentMode = .scaleAspectFill // изображение на всю вью
        storeView.translatesAutoresizingMaskIntoConstraints = false
        return storeView
    }()
   
    ///создание таблицы
    let tableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)

        configureTableView()
        setupStoreView()
    }
    
    
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 100
        

    }
    
    
    func setTableViewDelegates() {
        //tableView.delegate   = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    
    ///Настройка обьектов
    func setupStoreView() {
        view.addSubview(storeView)
        storeView.topAnchor.constraint(equalTo: view.topAnchor).isActive           = true
        storeView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive     = true
        storeView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive   = true
        storeView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        storeView.backgroundColor = .cyan
    }
}


extension BookCollectionViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = "Hello"
        return UITableViewCell()
    }
}
/// найти способ и понять как внедрить в таблицу книги и описание
