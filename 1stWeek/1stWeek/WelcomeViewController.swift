//
//  ViewController.swift
//  1stWeek
//
//  Created by 신지원 on 2023/10/13.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    private var idText: String = ""
    private var passwordText: String = ""
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwdTextField: UITextField!
    @IBOutlet weak var pushButton: UIButton!
    @IBOutlet weak var presentButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func idTextFieldDidEditing(_ sender: Any) {
        guard let textField = sender as? UITextField else {return}
        if let idText = textField.text {
            self.idText = idText
        }
    }
    
    @IBAction func passwordTextFieldDidEditing(_ sender: Any) {
        guard let textField = sender as? UITextField else {return}
        if let passwordText = textField.text {
            self.passwordText = passwordText
        }
    }
    
    @IBAction func pushBtnTap(_ sender: Any) {
        pushToResultVC()
    }
    
    @IBAction func presentBtnTap(_ sender: Any) {
        presentToResultVC()
    }
    
    func pushToResultVC() {
        guard let resultVC = self.storyboard?.instantiateViewController(identifier: "ResultViewController") as? ResultViewController else {return}
        resultVC.setLabelText(id: idText, password: passwordText)
        resultVC.delegate = self
        self.navigationController?.pushViewController(resultVC, animated: true)
    }
    
    func presentToResultVC() {
        guard let resultVC = self.storyboard?.instantiateViewController(identifier: "ResultViewController") as? ResultViewController else {return}
        resultVC.setLabelText(id: idText, password: passwordText)
        resultVC.delegate = self
        self.present(resultVC, animated: true)
    }
    
}

extension WelcomeViewController: GetDataProtocol {
    func getLoginData(id: String, password: String) {
        print("받아온 id : \(id), 받아온 password : \(password)")
    }
}
