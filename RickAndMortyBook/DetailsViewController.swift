//
//  DetailsViewController.swift
//  RickAndMortyBook
//
//  Created by Batuhan Berk Ertekin on 2.02.2023.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var aboutLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    var selectedData : RickyAndMorty?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        nameLabel.text = selectedData?.name
        aboutLabel.text = selectedData?.about
        imageView.image = selectedData?.image
        
        // Do any additional setup after loading the view.
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
