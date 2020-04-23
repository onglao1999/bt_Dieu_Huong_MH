//
//  SoLieuCoronaViewController.swift
//  Bai_Tap_Dieu_Huong_Man_Hinh
//
//  Created by Ong_Lao_Ngao on 4/22/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class SoLieuCoronaViewController: UIViewController {
    let image111 = UIImageView()
    let button1: UIButton = {
        let button = UIButton()
        //button.addTarget(self, action: #selector(folder1), for: .touchUpInside)
        return button
    }()
    let slcrn = UILabel()
    let vietnam: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(oVN), for: .touchUpInside)
        return button
    }()
    let thegioi: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(oTG), for: .touchUpInside)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
       
        image111.image = UIImage(named: "hoatuyet")
        view.addSubview(image111)
        image111.frame = CGRect(x: 0, y: 0, width: view.frame.maxX, height: view.frame.maxY)
        image111.alpha = 0.3
        
        
        let leftBT = UIBarButtonItem(image: UIImage(named: "folder"), style: .done, target: self, action: #selector(folder1))
        navigationItem.rightBarButtonItem = leftBT
        view.backgroundColor = .white
        st_slcrn()
        //st_folder1()
        stVietNam()
        
    }
    
    func st_slcrn(){
        slcrn.text = "Số liệu Corona"
        slcrn.font = UIFont.boldSystemFont(ofSize: 30)
        
        slcrn.textColor = .black
        view.addSubview(slcrn)
        slcrn.translatesAutoresizingMaskIntoConstraints = false
        
        slcrn.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.maxY/8).isActive = true
        slcrn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.maxX/20).isActive = true
        slcrn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        slcrn.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
    }
    
    func st_folder1(){
        view.addSubview(button1)
        
        button1.setImage(UIImage(named: "folder"), for: .normal)
        button1.translatesAutoresizingMaskIntoConstraints = false
        
        button1.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.maxY/17).isActive = true
        button1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -view.frame.maxX/20).isActive = true
        button1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        button1.heightAnchor.constraint(equalTo: button1.widthAnchor, constant: 1).isActive = true
    }
    
    @objc func folder1(){
        
       let screenVN = FolderViewController()
       screenVN.modalPresentationStyle = .fullScreen
       self.navigationController?.pushViewController(screenVN, animated: false)
    }
    
    func stVietNam(){
        vietnam.setTitle("Việt Nam", for: .normal)
        vietnam.setTitleColor(.white, for: .normal)
        vietnam.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        vietnam.backgroundColor = .gray
        
        view.addSubview(vietnam)
        vietnam.translatesAutoresizingMaskIntoConstraints = false
        
        vietnam.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.maxY/1.3).isActive = true
        vietnam.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vietnam.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7).isActive = true
        vietnam.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07).isActive = true
        
        // setting thegioi
        thegioi.setTitle("Thế Giới", for: .normal)
        thegioi.setTitleColor(.black, for: .normal)
        thegioi.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        thegioi.backgroundColor = .yellow
        
        view.addSubview(thegioi)
        thegioi.translatesAutoresizingMaskIntoConstraints = false
        
        thegioi.topAnchor.constraint(equalTo: vietnam.bottomAnchor, constant: view.frame.maxY/50).isActive = true
        thegioi.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        thegioi.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7).isActive = true
        thegioi.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07).isActive = true
        
    }
    @objc func oVN(){
        let screenVN = VietNamViewController()
        screenVN.modalPresentationStyle = .fullScreen
       // present(screenVN, animated: false, completion: nil)
        self.navigationController?.pushViewController(screenVN, animated: false)
       // self.navigationController?.pushViewController(screenVN, animated: false)
        
    }
    @objc func oTG(){
        let screenVN = TheGioiViewController()
        screenVN.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(screenVN, animated: false)
    }
}
