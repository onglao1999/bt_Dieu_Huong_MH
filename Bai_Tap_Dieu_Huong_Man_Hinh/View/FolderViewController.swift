//
//  FolderViewController.swift
//  Bai_Tap_Dieu_Huong_Man_Hinh
//
//  Created by Ong_Lao_Ngao on 4/23/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class FolderViewController: UIViewController {
let image = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        let book1 = UIBarButtonItem(image: UIImage(named: "book1"), style: .plain, target: self, action: #selector(book2))
        navigationItem.rightBarButtonItem = book1
         image.image = UIImage(named: "felder")
               image.frame = CGRect(x: 0 ,y: 90, width: view.frame.maxX, height: view.frame.maxY)
               view.addSubview(image)
    }
    
    @objc func book2(){
        let screen = BookViewController()
        self.navigationController?.pushViewController(screen, animated: false)
    }
   

}
