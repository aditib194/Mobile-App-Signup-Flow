//
//  Log inViewController.swift
//  HackerNews
//
//  Created by Aditi Bansal on 8/15/25.
//
//
//validate login username
//validate login password
//
//func validateLogin(value: String) -> Bool
//func validateLogin(password: String) -> Bool
//


import UIKit

class Log_inViewController: UIViewController {
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func validate(username: String?, password: String?) -> Bool {
        if let _ = username, let _ = password {
            return true
        }
        return false
    }
    
    @IBAction func loginAction(_ sender: Any) {
        let emailValidationResult = validate(username: Email.text, password: Password.text)
        print("login button clicked!!!")
    }
}
