//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Franck Tchouambou on 1/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    let reuseIdentifier = "cell"
    
    
    

    
    
    
    // MARK: - UITableViewDataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return Model.shared.movies.count
        
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier , for: indexPath)
        
        let movies = Model.shared.movies
        
        let movie = movies[indexPath.row]
        
        cell.textLabel?.text = movie
        
        
        return cell
    }
    
    
    // MARK: - UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        guard editingStyle == .delete else { return }
        
        Model.shared.delete(at: indexPath.row)
        tableView.reloadData()
        
        
        
        
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
    
    
    
    
}
    
   

}
