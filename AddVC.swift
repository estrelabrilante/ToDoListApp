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
        //pullback from storage if there is items
        let itemArrayStored = defaults.object(forKey: "ToDoList")
        if let tempItems = itemArrayStored {
            itemArray = tempItems as! [String]
            itemArray.append(inputTextField.text!)
            print("itemarray is:")
            print(itemArray)
        }
        else
        {
            itemArray.append(inputTextField.text!)
        }
        defaults.set(itemArray, forKey: "ToDoList")
        inputTextField.text = ""
       
        
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
