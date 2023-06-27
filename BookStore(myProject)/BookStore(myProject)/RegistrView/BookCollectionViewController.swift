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
    
    let tableView = UITableView()
    
    var data = [String]()
    
    
//    private lazy var collectionView: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        return view
//    }()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for x in 0...10 {
            data.append("Some data \(x)")
        }
        
        view.addSubview(tableView)
        tableView.register(UITableViewCell.self,
                        forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        setupStoreView()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    override func loadView() {
        self.view = UIView()
        self.view = UITableView()
    }
    
    ///Настройка обьектов
    func setupStoreView() {
        view.addSubview(storeView)
        storeView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        storeView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        storeView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        storeView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        storeView.backgroundColor = .cyan
    }
  
}


extension BookCollectionViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("cell tapped")
    }
}
/// найти способ и понять как внедрить в таблицу книги и описание
