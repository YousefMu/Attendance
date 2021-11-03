//
//  Update.swift
//  newTableVC
//
//  Created by Yousef Alasmar on 27/03/1443 AH.
//

import UIKit

protocol UpdateDelegate {
    func updateName(name : String, time: String, index: Int)
    
}

class Update: UIViewController {

    var currentIndex = 0
    var name : String = ""
    var time : String = ""
    var delegate: UpdateDelegate!
    
    @IBOutlet weak var upText: UITextField!
    @IBOutlet weak var upTime: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        upText.text = name
        upTime.text = time
    }
    
    @IBAction func upButton(_ sender: Any) {
        delegate.updateName(name: upText.text!, time: upTime.text!, index: currentIndex)
        
        navigationController?.popViewController(animated: true)
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
