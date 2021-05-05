//
//  ViewController.swift
//  eShop
//
//  Created by Dong Truong on 5/5/21.
//

import UIKit

class LobbyViewController: UIViewController {

    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Utilities.styleFilledButton(logInButton)
        Utilities.styleHollowButton(signUpButton)
    }

    @IBAction func logInTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "LogInViewController") as! LogInViewController
        navigationController?.pushViewController(vc, animated: true)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    @IBAction func signUpTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "SignUpViewController") as! SignUpViewController
        navigationController?.pushViewController(vc, animated: true)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
}
