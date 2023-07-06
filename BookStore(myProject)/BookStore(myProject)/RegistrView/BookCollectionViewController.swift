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
    var images: [Image] = []
    
    struct Cells {
        static let imageCell = "ImageCell"
    }
    
    var data = [String]()
    
    
//    private lazy var collectionView: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        return view
//    }()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sean`s Images"
        images = fetchData()
        
        for x in 1...10 {
            data.append("Some data \(x)")
        }
        
        view.addSubview(tableView)
        tableView.register(ImageCell.self,
                        forCellReuseIdentifier: Cells.imageCell)
        tableView.delegate   = self
        tableView.dataSource = self
        tableView.rowHeight  = 100
        
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
        storeView.topAnchor.constraint(equalTo: view.topAnchor).isActive           = true
        storeView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive     = true
        storeView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive   = true
        storeView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        storeView.backgroundColor = .cyan
    }
  
}


extension BookCollectionViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.imageCell) as! ImageCell
        let video = images[indexPath.row]
        cell.set(image: video)
        
//        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//        print("cell tapped")
//    }
}

extension BookCollectionViewController {
    
    func fetchData() -> [Image] {
        let image1   = Image(image: Images.men, title: "First book")
        let image2   = Image(image: Images.news, title: "First book")
        let image3   = Image(image: Images.ninety, title: "First book")
        let image4   = Image(image: Images.patreon, title: "First book")
        let image5   = Image(image: Images.snake, title: "First book")
        let image6   = Image(image: Images.softSkils, title: "First book")
        let image7   = Image(image: Images.swift, title: "First book")
        let image8   = Image(image: Images.telegram, title: "First book")
        let image9   = Image(image: Images.tesla, title: "First book")
        let image10  = Image(image: Images.xcode, title: "First book")
        
        return [image1, image2, image3, image4, image5, image6, image7, image8, image9, image10]
    }
}


/// найти способ и понять как внедрить в таблицу книги и описание
