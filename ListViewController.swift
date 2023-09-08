//
//  ListViewController.swift
//  To Do List App
//
//  Created by SHYNU MARY VARGHESE on 2023-09-06.
//

import UIKit

class ListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    var items : [String] = []
    @IBOutlet weak var tableview: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "List")
        cell.textLabel?.text = items[indexPath.row] 
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        }
        
            
    override func viewDidAppear(_: Bool){

        let itemArrayStored =  UserDefaults.standard.object(forKey: "ToDoList")
        if let tempItems = itemArrayStored {
            items = tempItems as! [String]
            print("items is")
          print(items)
        }
        tableview.reloadData()
    }
    //deleting row from tableview
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
       if editingStyle == .delete {
         print("Deleted")
           items.remove(at: indexPath.row)
           tableview.reloadData()
           UserDefaults.standard.set(items, forKey: "ToDoList")
       }
     }
     
    
}
