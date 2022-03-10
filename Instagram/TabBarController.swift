//
//  TabBarController.swift
//  Instagram
//
//  Created by si-hasegawa on 2022/03/06.
//

import UIKit
import Firebase // 先頭でFirebaseをimportしておく

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // currentUserがnilならログインしていない
        if Auth.auth().currentUser == nil {
            // ログインしていないときの処理
            let loginViewController = self.storyboard?.instantiateViewController(withIdentifier: "Login")
            self.present(loginViewController!, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //タブアイコンの色
        self.tabBar.tintColor = UIColor(red: 1.0, green: 0.44, blue: 0.11, alpha: 1)
        //タブバーの背景色を設定
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor(red: 0.96, green: 0.91, blue: 0.87, alpha: 1)
        self.tabBar.standardAppearance = appearance
        self.tabBar.scrollEdgeAppearance = appearance
        //UITabBarControllerDelegateプロトコルのメソッドをこのクラスで処理する。
        self.delegate = self
        //タブバーのアイコンがタップされた時に呼ばれるdelegateメソッドを処理する。
        func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
            if viewController is ImageSelectViewController {
                //ImageSelectViewControllerは、タブ切り替えではなくモーダル画面遷移する
                let imageSelectViewController = storyboard!.instantiateViewController(withIdentifier: "ImageSelect")
                present(imageSelectViewController, animated: true)
                return false
            } else {
                //その他のviewControllerは通常のタブ切り替えを実施
                return true
            }
            
        }

        // Do any additional setup after loading the view.
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
