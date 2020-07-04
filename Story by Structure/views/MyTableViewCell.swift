//
//  MyTableViewCell.swift
//  Story by Structure
//
//  Created by James Mitchell on 7/3/20.
//  Copyright © 2020 James Mitchell. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    var tableView: UITableView!
    var index: Int!
    var indexPath: IndexPath!
    
    var my: UITableView! {
        
        didSet {
            
        }
        
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    
    
    
    
    
    
    @IBAction func editButton(_ sender: Any) {
        
        //print("Printing is editing")
        
        
        
    }
    
    
    @IBAction func deleteButton(_ sender: Any) {
        
        
        //print("Printing is working")
        
        
    }
    
    
    
    
    
    @IBOutlet weak public var myDeleteButton: UIButton!
    
    
}
