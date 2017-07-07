//
//  ShoppingViewController.swift
//  homework7
//
//  Created by user on 06.07.17.
//  Copyright © 2017 fijirald. All rights reserved.
//

import UIKit

class ShoppingViewController: UIViewController
{
    
    @IBOutlet weak var shoppingTaskTextField: UITextField!
    
    @IBAction func addShopTaskButton(_ sender: Any) {
        let text = shoppingTaskTextField.text
        shoppingTask.append(text!)
shoppingTableView.reloadData()
    }
    
    var shoppingTask = ["Milk", "Chocolate", "Apples", "Sausages"]
    
    @IBOutlet weak var shoppingTableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.shoppingTableView.dataSource = self as? UITableViewDataSource
        self.shoppingTableView.tableFooterView = UIView()
        shoppingTaskTextField.backgroundColor = UIColor.lightGray
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        let text = shoppingTaskTextField.text
        shoppingTask.append(text!)
        shoppingTableView.reloadData()
        return true
    }
        
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        
        if editingStyle == .delete {
            
            self.shoppingTask.remove(at: indexPath.row)
            
            self.shoppingTableView.reloadData()
        }
        
    }
    

    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension ShoppingViewController: UITableViewDataSource
{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return shoppingTask.count
        
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let shoppingCell = shoppingTableView.dequeueReusableCell(withIdentifier: "ShoppingTableViewIdentifier", for: indexPath)
        
        if let myShoppingCell = shoppingCell as? ShoppingTableViewCell
        {
            myShoppingCell.configureAnotherCellWith(name: shoppingTask[indexPath.row])
        }
        return shoppingCell
    }
}



