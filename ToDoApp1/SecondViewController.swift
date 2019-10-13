//
//  SecondViewController.swift
//  ToDoApp1
//
//  Created by Sudip Chitroda on 2019-07-11.
//  Copyright © 2019 Sudip Chitroda. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var textInput: UITextField!
    @IBAction func addButton(_ sender: UIButton) {
        let itemObj = UserDefaults.standard.object(forKey: "P1")
        var items :[String]
        if let tempItem = itemObj as? [String]{
            items = tempItem
            items.append(textInput.text!)
        }else{
            items = [textInput.text!]
        }
        UserDefaults.standard.set(items, forKey: "P1")
        textInput.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textInput.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
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
