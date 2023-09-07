//
//  AddVC.swift
//  To Do List App
//
//  Created by SHYNU MARY VARGHESE on 2023-09-05.
//

import UIKit

class AddVC: UIViewController,UITextFieldDelegate{
    var itemArray : [String] = ["glasses","plants"]
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBAction func doneButtonClicked(_ sender: Any) {
        print("Button clicked")
        if let input = inputTextField.text{
            print(input)
            itemArray.append(input)
            print(itemArray)
            defaults.set(itemArray, forKey: "TodoListArray")
        }
        //permanent storage of user added
//        var items : [String]
//        let itemObject = UserDefaults.standard.object(forKey: "items")
//        if let tempItems = itemObject as? [String]{
//            items = tempItems
//            items.append(inputTextField.text!)
//        }
//        else{
//            items = [inputTextField.text!]
//        }
//        UserDefaults.standard.set(items, forKey: "items")
//        inputTextField.text = ""
//        *****************************************************************
       
        
    }
    @IBOutlet weak var doneButtonClicked: UIButton!
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        inputTextField.resignFirstResponder()
        return(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        guard let firstVC = segue.destination as? FirstViewController else {return}
        if let item = inputTextField.text{
            firstVC.itemAdded = item
            
        }
    }
    

}
