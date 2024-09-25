//
//  HomeViewController.swift
//  LinkedIn Design
//
//  Created by Saideep Reddy Talusani on 9/25/24.
//

import UIKit

class HomeViewController: UIViewController {
    let defaults = UserDefaults.standard
    @IBOutlet weak var password: UILabel!
    @IBOutlet weak var email: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    func updateUI() {
        email.text = defaults.string(forKey: "email")
        password.text = defaults.string(forKey: "password")
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
