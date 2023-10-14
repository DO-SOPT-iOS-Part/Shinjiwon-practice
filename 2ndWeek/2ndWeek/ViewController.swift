//
//  ViewController.swift
//  2ndWeek
//
//  Created by 신지원 on 2023/10/14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
        // Do any additional setup after loading the view.
    }
    
    private func setLayout(){
        super.view.backgroundColor = .white
        [baduk1, baduk2, shield].forEach{[weak self] view in
            guard let self else {return}
            view.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(view)
        }
        
        NSLayoutConstraint.activate([baduk1.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50),
                                     baduk1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
                                     baduk1.widthAnchor.constraint(equalToConstant: 20),
                                     baduk1.heightAnchor.constraint(equalToConstant: 20)])
        NSLayoutConstraint.activate([baduk2.topAnchor.constraint(equalTo: self.baduk1.bottomAnchor, constant: 40),
                                     baduk2.leadingAnchor.constraint(equalTo: self.baduk1.trailingAnchor, constant: 40),
                                     baduk2.widthAnchor.constraint(equalToConstant: 20),
                                     baduk2.heightAnchor.constraint(equalToConstant: 20)])
        NSLayoutConstraint.activate([shield.topAnchor.constraint(equalTo: self.baduk2.bottomAnchor, constant: 40),
                                     shield.leadingAnchor.constraint(equalTo: self.baduk2.trailingAnchor, constant: 40),
                                     shield.widthAnchor.constraint(equalToConstant: 80),
                                     shield.heightAnchor.constraint(equalToConstant: 10)])
    }
    
    var baduk1: UIView = {
        let view = UIView(frame: .init(origin: .zero, size: .init(width: 20, height: 20)))
        
        view.backgroundColor = .black
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        return view
    }()
    
    var baduk2: UIView = {
        let view = UIView(frame: .init(origin: .zero, size: .init(width: 20, height: 20)))
        
        view.backgroundColor = .black
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        return view
    }()

    var shield: UIView = {
        let view = UIView(frame: .init(origin: .zero, size: .init(width: 80, height: 10)))
        
        view.backgroundColor = .blue
        view.layer.cornerRadius = 1
        view.clipsToBounds = true
        return view
    }()
}

