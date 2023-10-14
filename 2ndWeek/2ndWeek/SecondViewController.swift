//
//  SecondViewController.swift
//  2ndWeek
//
//  Created by 신지원 on 2023/10/14.
//

import Foundation

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
        // Do any additional setup after loading the view.
    }
    
    private func setLayout(){
        super.view.backgroundColor = .white
        [view1, view2, view3, view4].forEach{[weak self] view in
            guard let self else {return}
            view.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(view)
        }
        
        NSLayoutConstraint.activate([view1.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
                                     view1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
                                     view1.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/2),
                                     view1.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/4)])
        NSLayoutConstraint.activate([view2.topAnchor.constraint(equalTo: self.view1.bottomAnchor, constant: 0),
                                     view2.leadingAnchor.constraint(equalTo: self.view1.trailingAnchor, constant: 0),
                                     view2.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/2),
                                     view2.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/4)])
        NSLayoutConstraint.activate([view3.topAnchor.constraint(equalTo: self.view2.bottomAnchor, constant: 0),
                                     view3.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
                                     view3.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/2),
                                     view3.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/4)])
        NSLayoutConstraint.activate([view4.topAnchor.constraint(equalTo: self.view3.bottomAnchor, constant: 0),
                                     view4.leadingAnchor.constraint(equalTo: self.view3.trailingAnchor, constant: 0),
                                     view4.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/2),
                                     view4.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/4)])
    }
    
    var view1 : UIView = {
        let view = UIView()
        
        view.backgroundColor = .systemPink
        view.clipsToBounds = true
        return view
    }()
    
    var view2 : UIView = {
        let view = UIView()
        
        view.backgroundColor = .systemYellow
        view.clipsToBounds = true
        return view
    }()
    
    var view3 : UIView = {
        let view = UIView()
        
        view.backgroundColor = .systemGreen
        view.clipsToBounds = true
        return view
    }()
    
    var view4 : UIView = {
        let view = UIView()
        
        view.backgroundColor = .systemTeal
        view.clipsToBounds = true
        return view
    }()
        
        
    
}
