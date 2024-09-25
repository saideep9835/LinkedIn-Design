//
//  ViewController.swift
//  LinkedIn Design
//
//  Created by Saideep Reddy Talusani on 8/26/24.
//

import UIKit

class ViewController: UIViewController {

    let userDefault = UserDefaults.standard
    @IBOutlet weak var passwordTF: UITextField!

    @IBOutlet weak var emailTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signInButton(_ sender: UIButton) {
        
        
        userDefault.set(emailTF.text, forKey: "email")
        userDefault.set(passwordTF.text, forKey: "password")
        
        guard let cell = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController else {return}
        navigationController?.pushViewController(cell, animated: true)
    }
    
}

