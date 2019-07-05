//
//  ViewController.swift
//  iosDataStorageExample
//
//  Created by MacStudent on 2019-07-04.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var swtchRememberMe: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnLoginPressed(_ sender: UIButton) {
        if self.txtEmail.text == "admin@gmail.com" &&
            self.txtPassword.text == "secret"
        {
            if swtchRememberMe.isOn
            {
                let userDefault = UserDefaults.standard
                userDefault.setValue(txtEmail.text, forKey: "userEmail")
                userDefault.set(txtPassword.text, forKey: "userPassword")
            }
            else
            {
                
            }
        }
        else
        {
            let alert  =
                UIAlertController(title: "Wrong UserName or Password", message: "Enter correct credentials", preferredStyle: UIAlertController.Style.alert)
            
           
            let actionOk = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { _ in
                print("Alert OK")
                
            })
            
            
            alert.addAction(actionOk)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func unWindLogout(_ sender: UIStoryboardSegue){
        
      print("ggg")
    }
    
    
}

