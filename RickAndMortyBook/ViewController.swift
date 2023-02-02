//
//  ViewController.swift
//  RickAndMortyBook
//
//  Created by Batuhan Berk Ertekin on 2.02.2023.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    
    
    var myList = [RickyAndMorty]()
    var chosenData  :  RickyAndMorty?
      
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        tableView.dataSource = self
        tableView.delegate = self
            
       
        let rick = RickyAndMorty(name: "Rick Sanchez", image: UIImage(named: "rick")!, about: "Beth Smith'in babası ve Morty'nin dedesi .")
        
        let morty = RickyAndMorty(name: "Morty Smith", image: UIImage(named: "morty")!, about: " Tam adı Mortimer Morty Smith, Sr.dır.   ")
        
        let jerry = RickyAndMorty(name: "Jerry Smith", image: UIImage(named: "jerry")!, about: " Morty'in güvensiz babası")
        
        let beth = RickyAndMorty(name: "Beth Smith", image: UIImage(named: "bethsmith")!, about: "Morty'in Annesi")
        
        
                                  

        myList = [rick,morty,jerry,beth]
        
        
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return myList.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = UITableViewCell()
        cell.textLabel?.text =  myList[indexPath.row].name
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        chosenData = myList[indexPath.row]
        
        
       
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            
            let VC = segue.destination as! DetailsViewController
            
            VC.selectedData = chosenData
                
            
            }
           
        }
    
    
    
    
    


}

