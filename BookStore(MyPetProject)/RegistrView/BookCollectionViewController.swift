//
//  bookCollectionViewController.swift
//  BookStore(MyPetProject)
//
//  Created by Sergio Mascarpone on 11.07.23.
//

import UIKit

class BookCollectionViewController: UIViewController {
    
     //создание изображения
     let storeView: UIView = {
         let storeView = UIView()
         storeView.contentMode = .scaleAspectFill // изображение на всю вью
         storeView.translatesAutoresizingMaskIntoConstraints = false
         storeView.backgroundColor = .cyan
         return storeView
     }()
    
     ///создание таблицы
     let tableView = UITableView()
     
     
     override func viewDidLoad() {
         super.viewDidLoad()
         view.addSubview(tableView)
         tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
         
         tableView.delegate   = self
         tableView.dataSource = self

        
         //setupStoreView()
     }
    
     
     override func viewDidLayoutSubviews() {
         super.viewDidLayoutSubviews()
         tableView.frame = view.bounds
     }
     
     ///Настройка обьектов
 //    func setupStoreView() {
 //        view.addSubview(storeView)
 //        storeView.topAnchor.constraint(equalTo: view.topAnchor).isActive           = true
 //        storeView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive     = true
 //        storeView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive   = true
 //        storeView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
 //        storeView.backgroundColor = .cyan
 //    }
 }


 extension BookCollectionViewController: UITableViewDelegate, UITableViewDataSource {
     
     
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return 100
     }
     
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
         
         cell.textLabel?.text = "BookName \(indexPath.row + 1)"
         return cell
     }
 }
 /// найти способ и понять как внедрить в таблицу книги и описание
