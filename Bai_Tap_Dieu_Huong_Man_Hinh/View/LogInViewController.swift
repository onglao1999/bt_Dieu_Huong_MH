//
//  LogInViewController.swift
//  Bai_Tap_Dieu_Huong_Man_Hinh
//
//  Created by Ong_Lao_Ngao on 4/22/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    let image = UIImageView()
    let tf1 = UITextField()
    let tf2 = UITextField()
    var button: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(next2), for: .touchUpInside)
        return button
    }()
    
    var button1: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(next1), for: .touchUpInside)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.backgroundColor = .white
        view.backgroundColor = .white
        
        stImage()
        sttf1_2()
        stButton_1()
    }
    @objc func next1(){
        let a = RegisterViewController()
        a.modalPresentationStyle = .fullScreen
        present(a,animated: false, completion: nil)
    }
    @objc func next2(){
        
        let a = SoLieuCoronaViewController()
        let a1 = UINavigationController(rootViewController: a)
        a1.modalPresentationStyle = .fullScreen
        present(a1, animated: false, completion: nil)
    }
    func stImage(){
        image.backgroundColor = .black
        image.image = UIImage(named: "icon")
        self.view.addSubview(image)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.maxY/7).isActive = true
        image.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        image.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        image.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.35).isActive = true
    }
    func sttf1_2(){
        tf1.layer.borderWidth = 0.3
        tf1.placeholder = "  Username"
        view.addSubview(tf1)
        tf1.translatesAutoresizingMaskIntoConstraints = false
        tf1.topAnchor.constraint(equalTo: image.bottomAnchor, constant: view.frame.maxY/10 ).isActive = true
        tf1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        tf1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7).isActive = true
        tf1.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.04).isActive = true
        tf1.layer.cornerRadius = CGFloat(5)
        
        tf2.layer.borderWidth = 0.3
        tf2.placeholder = "  Password"
        view.addSubview(tf2)
        tf2.translatesAutoresizingMaskIntoConstraints = false
        tf2.topAnchor.constraint(equalTo: tf1.bottomAnchor, constant: view.frame.maxY/50 ).isActive = true
        tf2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        tf2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7).isActive = true
        tf2.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.04).isActive = true
        tf2.layer.cornerRadius = CGFloat(5)
    }
    
    func stButton_1(){
        
        button.setImage(UIImage(named: "login"), for: .normal)
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.topAnchor.constraint(equalTo: tf2.bottomAnchor, constant: view.frame.maxY/50 ).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        button.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08).isActive = true
        
        button1.setTitle("No account? Register ", for: .normal)
        button1.setTitleColor(.black, for: .normal)
        view.addSubview(button1)
        button1.translatesAutoresizingMaskIntoConstraints = false
        
        button1.topAnchor.constraint(equalTo: button.bottomAnchor, constant: view.frame.maxY/800 ).isActive = true
        button1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6).isActive = true
        button1.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08).isActive = true
    }
    
    
}
