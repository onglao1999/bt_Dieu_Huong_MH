//
//  TheGioiViewController.swift
//  Bai_Tap_Dieu_Huong_Man_Hinh
//
//  Created by Ong_Lao_Ngao on 4/23/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class TheGioiViewController: UIViewController {
let image = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
         image.image = UIImage(named: "thegioi")
        image.frame = CGRect(x: 0 ,y: 90, width: view.frame.maxX, height: view.frame.maxY/1.2)
               view.addSubview(image)
    }
    

    

}
