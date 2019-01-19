//
//  Model.swift
//  Movie List
//
//  Created by Franck Tchouambou on 1/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Model {
    
    static let shared = Model()
    private init() {}
    
     var movies = [String]()
    
    
    func newMovie(_ movie: String){
        
        movies.append(movie)
        
        
        
    }
    
    
    func delete(at index: Int) {
        movies.remove(at: index)
        
    }
    
    
    func moveMovie(from index: Int, to destinationIndex: Int) {
        let movie = movies.remove(at: index)
        movies.insert(movie, at: destinationIndex)
    }
    
    
    func movieCount() -> Int {
        return movies.count
    }
    
    func movie(at index: Int) -> String {
        return movies[index]
    }
    
    
    
    
    
}
