//
//  ViewController.swift
//  newTableVC
//
//  Created by Yousef Alasmar on 26/03/1443 AH.
//

import UIKit

struct Aspect {
    var textNm : String = ""
    var textTm : String = ""
}

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate, UpdateDelegate {
    func updateName(name: String, time: String, index: Int) {
        item[index].textNm = name
        item[index].textTm = time
          tableView.reloadData()
    }
    //nn
    var index : Int!
    var index2 : Int!
    
    @IBOutlet weak var textLable: UITextField!
    @IBOutlet weak var TimeLable: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var item = [Aspect]()
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return item.count
        
    }
    //nn
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
     
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = item[indexPath.row].textNm
        cell.detailTextLabel?.text = item[indexPath.row].textTm
        
        return cell
        
        
    }
    // function to remove item
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete{
            item.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    @IBAction func Add(_ sender: Any) {
        
        item.append(Aspect(textNm : textLable.text!,
                           textTm: TimeLable.text!))
        print(item)
        tableView.reloadData()
    }
        // button to remove all items
    @IBAction func Del(_ sender: Any) {
        
        item.removeAll()
        tableView.reloadData()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let newVC = (storyboard?.instantiateViewController(withIdentifier: "newID")) as! Update
        newVC.currentIndex = indexPath.row
        
        newVC.time = item[indexPath.row].textTm
        newVC.name = item[indexPath.row].textNm

        newVC.delegate = self
        navigationController?.pushViewController(newVC, animated: true)

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

