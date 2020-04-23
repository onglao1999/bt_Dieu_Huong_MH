//
//  BookViewController.swift
//  Bai_Tap_Dieu_Huong_Man_Hinh
//
//  Created by Ong_Lao_Ngao on 4/23/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class BookViewController: UIViewController {
    let button: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(tc1), for: .touchUpInside)
        return button
    }()
    let image = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.title = "Map Covid"
        image.image = UIImage(named: "book")
        image.frame = CGRect(x: 0 ,y: 100, width: view.frame.maxX, height: view.frame.maxY/3)
        view.addSubview(image)
        
        //
        button.backgroundColor = .gray
        button.setTitle("Trang Chủ", for: .normal)
        button.setTitleColor(.white, for: .normal)
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.maxY/1.24).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7).isActive = true
        button.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.06).isActive = true
    }
    @objc func tc1(){
        let abc = SoLieuCoronaViewController()
        abc.modalPresentationStyle = .fullScreen
        self.navigationController?.popToRootViewController(animated: false)
    }
    
    
    
}
