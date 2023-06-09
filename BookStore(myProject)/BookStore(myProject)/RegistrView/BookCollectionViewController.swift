//
//  BookCollectionViewController.swift
//  BookStore(myProject)
//
//  Created by Sergio Mascarpone on 1.06.23.
//

import UIKit
//
//class BookCollectionViewController: UICollectionViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        collectionView.backgroundColor = .cyan
////        setupNavigationBar()
////        setupCollectionView()
//    }
////
////    func setupCollectionView() {
////            collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "CellId")
////        }
////
////    func setupNavigationBar() {
////            let titleLable = UILabel()
////            titleLable.text = "BOOKS"
////            titleLable.font = UIFont.systemFont(ofSize: 15, weight: .medium)
////            titleLable.textColor = .lightGray
////        }
////
////    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
////           return 5
////       }
//}





class BookCollectionViewController: UIViewController {

    let storeView: UIView = {
        let storeView = UIView()
        storeView.contentMode = .scaleAspectFill // изображение на всю вью
        storeView.translatesAutoresizingMaskIntoConstraints = false
        return storeView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupStoreView()
//        setupCollectionView()

    }
//
//     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 5
//    }
//
//     func collectionView(_ collectionView: UICollectionView,
//        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellId", for: indexPath)
//        cell.backgroundColor = .red
//        return cell
//    }
//
//   private func setupCollectionView() {
//        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "CellId")
//    }

//    func setupNavigationBar() {
//        let titleLable = UILabel()
//        titleLable.text = "BOOKS"
//        titleLable.font = UIFont.systemFont(ofSize: 15, weight: .medium)
//        titleLable.textColor = .lightGray
//    }

    func setupStoreView() {
        view.addSubview(storeView)
        storeView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        storeView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        storeView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        storeView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        storeView.backgroundColor = .cyan

    }
}
