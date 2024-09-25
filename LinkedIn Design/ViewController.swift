//
//  ViewController.swift
//  LinkedIn Design
//
//  Created by Saideep Reddy Talusani on 8/26/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var emailTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signInButton(_ sender: UIButton) {
        
        
        let userDefault = UserDefaults.standard
        userDefault.set(emailTF.text, forKey: "email")
        userDefault.set(passwordTF.text, forKey: "password")
        if let email = userDefault.string(forKey: "email"), let password = userDefault.string(forKey: "password") {
            self.email.text = email
            self.passwordLabel.text = password
            print("Email: \(email)")
            print("Password: \(password)")
        }
    }
    
}

