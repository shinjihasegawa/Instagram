//
//  LoginViewController.swift
//  Instagram
//
//  Created by si-hasegawa on 2022/03/04.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var mailAddressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var displayNameTextField: UITextField!
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    //ログインボタンをタップした時に呼び出される。
    @IBAction func handleLoginButton(_ sender: Any) {
    }
    //アカウント作成ボタンをタップした時に呼び出される。
    @IBAction func handleCreateAccountButton(_ sender: Any) {
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
