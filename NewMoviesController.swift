//
//  NewMoviesController.swift
//  Movie List
//
//  Created by Franck Tchouambou on 1/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class NewMoviesController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

}
    
    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func addMovie(_ sender: UIButton) {
        guard let movie = textField.text, !movie.isEmpty else { return }
        Model.shared.newMovie(movie)
        textField.text = nil
        
        
    }
    


}
