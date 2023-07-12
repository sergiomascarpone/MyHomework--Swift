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
     var videos: [Video] = []
    
    
    struct Cells {
        static let imageCell = "ImageCell"
    }
     
     
     override func viewDidLoad() {
         super.viewDidLoad()
         title = "Sean`s Books"
         videos = fetchData()
         
         
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
         return videos.count
     }
     
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//         let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//
//         cell.textLabel?.text = "BookName \(indexPath.row + 1)"
         
         let cell = tableView.dequeueReusableCell(withIdentifier: Cells.imageCell) as! ImageCell
         let video = videos[indexPath.row]
         cell.set(video: video)
         
         return cell
     }
 }
 /// найти способ и понять как внедрить в таблицу книги и описание


extension BookCollectionViewController {
    
    func fetchData() -> [Video] {
        let video1  = Video(image: Images.noStoryboard, title: "No storyboards")
        let video2  = Video(image: Images.ios, title: "No storyboards")
        let video3  = Video(image: Images.ninety, title: "No storyboards")
        let video4  = Video(image: Images.patreon, title: "No storyboards")
        let video5  = Video(image: Images.raise, title: "No storyboards")
        let video6  = Video(image: Images.salaries, title: "No storyboards")
        let video7  = Video(image: Images.snake, title: "No storyboards")
        let video8  = Video(image: Images.softSkills, title: "No storyboards")
        let video9  = Video(image: Images.swiftNews, title: "No storyboards")
        let video10 = Video(image: Images.wireless, title: "No storyboards")
        let video11 = Video(image: Images.xcode, title: "No storyboards")
        
        return [video1, video2, video3, video4, video5, video6, video7, video8, video9, video10, video11]
    }
}
