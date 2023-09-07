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
    //var items : NSMutableArray = []
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "List")
        cell.textLabel?.text = items[indexPath.row] as? String
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //permanent storage of user added
        
        items = UserDefaults.standard.array(forKey: "TodoListArray") as! [String]
        tableview.reloadData()
        }
        
            
    override func viewDidAppear(_: Bool){
        
//        let itemObject = UserDefaults.standard.object(forKey: "items")
//        if let tempItems = itemObject as? NSArray{
//            items = tempItems as! NSMutableArray
//            tableview.reloadData()
//        }
        
    }
    
    
}
