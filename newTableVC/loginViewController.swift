//
//  loginViewController.swift
//  newTableVC
//
//  Created by Yousef Alasmar on 27/03/1443 AH.
//

import UIKit

class loginViewController: UIViewController {

    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func logIn(_ sender: Any) {

        UserDefaults.standard.set(Name.text, forKey: "Name")
        UserDefaults.standard.set(Password.text,forKey: "Password")

        if Name.text == "Yousef" && Password.text == "123"{
          label.text = "Welcome"
            let mainVC = storyboard?.instantiateViewController(withIdentifier: "ddd") as! ViewController
            navigationController?.show(mainVC, sender: nil)
        } else {
            label.text = "Username or password wrong"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let saveName = UserDefaults.standard.string(forKey: "Name")
        Name.text = saveName
        let savePassword = UserDefaults.standard.string(forKey: "Password")
        Password.text = savePassword
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
