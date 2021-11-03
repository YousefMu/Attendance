//
//  OneViewCell.swift
//  newTableVC
//
//  Created by Yousef Alasmar on 25/03/1443 AH.
//

import UIKit

class OneViewCell: UITableViewCell {

    @IBOutlet weak var textView: UITextField!

    @IBOutlet weak var timetext: UITextField!
    
    @IBAction func AddView(_ sender: UIButton) {
        
       
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
