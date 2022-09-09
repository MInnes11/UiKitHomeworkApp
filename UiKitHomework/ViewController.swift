//
//  ViewController.swift
//  UiKitHomework
//
//  Created by Monica Innes on 09/09/2022.
//

import UIKit

//class conforming to delegate and data source protocols
//responsible fror handling data and providing interactions with the table view
class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let mainChoices = ["Chicken and Sticky Rice",
                       "Spicy Beef and Noodles",
                       "Pulled Pork and Veggies",
                       "Tofu Scramble with Shredded Cabbage",
                       "Lemon Chicken with Sticky Rice and Veggies"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
       
    }
    
}
//used to handle the interaction of cells
extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Added to meal successfully.")
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainChoices.count
    }
    //dequeue is seeing is there is a previous useable cell and using it for template of new cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = mainChoices[indexPath.row]
        return cell
    }
}
