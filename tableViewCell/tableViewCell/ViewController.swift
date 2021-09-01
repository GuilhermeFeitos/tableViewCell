//
//  ViewController.swift
//  tableViewCell
//
//  Created by Gui Feitosa on 01/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    var programadores: [String] = ["Guilherme", "Lilian","Pedro","Jessica","Adriano"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 50
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return programadores.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = myTableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as? CustomCell {
            
            let programador = programadores[indexPath.row]
            cell.imageView?.image = UIImage(named: programador)
            cell.myLabel.text = programador
            
            return cell
            
        }
        
        return UITableViewCell()
    }
    
    
    
    
    
    
}
