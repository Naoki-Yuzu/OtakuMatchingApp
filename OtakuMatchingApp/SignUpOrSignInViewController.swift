//
//  SignUpOrSignInViewController.swift
//  OtakuMatchingApp
//
//  Created by 平田直幹 on 2020/01/27.
//  Copyright © 2020 Naoki Hirata. All rights reserved.
//

import UIKit
import Firebase

class SignUpOrSignInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("デュフフ")
    }
    
    
    @IBAction func SignInAnonymously(_ sender: Any) {
        
        Auth.auth().signInAnonymously { (success, error) in
            
            if error == nil {
            
                let storyboard: UIStoryboard = self.storyboard!
                let viewOfAnonymousSignUp = storyboard.instantiateViewController(withIdentifier: "didSignUpByAnonymous")
                self.navigationController?.pushViewController(viewOfAnonymousSignUp, animated: true)
//                print(success?.user)
                
            }
            
            
        }
        
    }
    
    

}
