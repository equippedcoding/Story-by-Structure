//
//  ViewController.swift
//  Story by Structure
//
//  Created by James Mitchell on 6/30/20.
//  Copyright © 2020 James Mitchell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var myData = ["first","second","third"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "MyTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "id_cell_one")
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        myData.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "id_cell_one", for: indexPath) as! MyTableViewCell
        
        cell.my = tableView
        cell.index = indexPath.row
        cell.indexPath = indexPath
        
        cell.myDeleteButton.addTarget(self, action:#selector(handleRegister), for: .touchUpInside)
        
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        //cell.textLabel?.text = myData[indexPath.row]
        return cell
    }
    
    @objc func handleRegister(sender: UIButton){
        myData.remove(at: 0)
        tableView.reloadData()
    }
    


}

