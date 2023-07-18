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
         return storeView
     }()
    
     ///создание таблицы
     let tableView = UITableView()
     var images: [Image] = []
    
    
    struct Cells {
        static let imageCell = "ImageCell"
    }
     
     
     override func viewDidLoad() {
         super.viewDidLoad()
         images = fetchData()
         
         
         view.addSubview(tableView)
         tableView.register(UITableViewCell.self, forCellReuseIdentifier: Cells.imageCell)
         
         //Высота Столбца
         tableView.rowHeight = 100
         tableView.register(ImageCell.self, forCellReuseIdentifier: "ImageCell")
         
         tableView.delegate   = self
         tableView.dataSource = self
         
         
         tableView.pin(to: view)

         //setupStoreView()
         
     }
    
  
     override func viewDidLayoutSubviews() {
         super.viewDidLayoutSubviews()
         tableView.frame = view.bounds
         
       
     }
     
//     //Настройка обьектов
//     func setupStoreView() {
//         view.addSubview(storeView)
//         storeView.topAnchor.constraint(equalTo: view.topAnchor).isActive           = true
//         storeView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive     = true
//         storeView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive   = true
//         storeView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//         storeView.backgroundColor = .cyan
//     }
 }


 extension BookCollectionViewController: UITableViewDelegate, UITableViewDataSource {
     
     
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return images.count
     }
     
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//         let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//
//         cell.textLabel?.text = "BookName \(indexPath.row + 1)"
         
         let cell = tableView.dequeueReusableCell(withIdentifier: Cells.imageCell) as! ImageCell
         let video = images[indexPath.row]
         cell.set(video: video)
         
         return cell
     }
 }
 /// найти способ и понять как внедрить в таблицу книги и описание

//размещение картинки и текста описания.
extension BookCollectionViewController {
    
    func fetchData() -> [Image] {
        let video1  = Image(image: Images.noStoryboard, name: "Трагедия, роман.", title: "Война и Мир.")
        let video2  = Image(image: Images.ios, name: "Фантастика, рассказ.", title: "Цикл времени")
        let video3  = Image(image: Images.ninety, name: "Фантастика, рассказ.", title: "Цикл времени - Последствия")
        let video4  = Image(image: Images.patreon, name: "Драмма, приключения.", title: "Бегущий по лезвию")
        let video5  = Image(image: Images.raise, name: "War", title: "Маленький принц")
        let video6  = Image(image: Images.salaries, name: "War", title: "Криминальное чтиво")
        let video7  = Image(image: Images.snake, name: "War", title: "Обливион")
        let video8  = Image(image: Images.softSkills, name: "War", title: "Темная башня")
        let video9  = Image(image: Images.swiftNews, name: "War", title: "1408 - Стивен Кинг")
        let video10 = Image(image: Images.wireless, name: "War", title: "Оно")
        let video11 = Image(image: Images.xcode, name: "War", title: "Зеленый свет")
        
        return [video1, video2, video3, video4, video5, video6, video7, video8, video9, video10, video11]
    }
}
