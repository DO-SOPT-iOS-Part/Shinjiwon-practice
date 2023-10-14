//
//  PushResultViewController.swift
//  1stWeek
//
//  Created by 신지원 on 2023/10/13.
//

import UIKit

class ResultViewController: UIViewController {
    
    private var id: String = "sfd"
    private var password: String = "sfd"
    
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var pwdLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    var delegate: GetDataProtocol?
    var loginDataCompletion: (([String]) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindText()
    }
    
    private func bindText() {
        self.idLabel.text = id
        self.pwdLabel.text = password
    }
    
    func setLabelText(id: String, password: String) {
        self.id = id
        self.password = password
        print("id : \(self.id), password : \(self.password)")
    }
    
    @IBAction func backButtonTap(_ sender: Any) {
        if let navigationController = self.navigationController {
            navigationController.popViewController(animated: true)
        } else {
            self.dismiss(animated: true)
        }

    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
