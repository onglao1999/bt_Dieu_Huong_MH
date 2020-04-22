//
//  VietNamViewController.swift
//  Bai_Tap_Dieu_Huong_Man_Hinh
//
//  Created by Ong_Lao_Ngao on 4/23/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class VietNamViewController: UIViewController {
let image = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        image.image = UIImage(named: "vietnam")
        image.frame = CGRect(x: 0 ,y: 90, width: view.frame.maxX, height: view.frame.maxY)
        view.addSubview(image)
        
    }
    

    

}
