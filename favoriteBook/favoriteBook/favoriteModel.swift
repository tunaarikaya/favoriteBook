//
//  favoriteModel.swift
//  favoriteBook
//
//  Created by Mehmet Tuna Arıkaya on 26.07.2024.
//

import Foundation

struct favoriteModel : Identifiable {
    var id = UUID()
    var title : String
    var elements : [favoriteElements]
    
    
}

struct favoriteElements : Identifiable {
    
    var id  = UUID()
    var name : String
    var imageName : String
    var description : String
    
}
//bands
let metalica = favoriteElements(name: "metallica", imageName: "metalica", description: "my fav music band.")
let megadeth = favoriteElements(name: "megadeth", imageName: "megadeth", description: "my 2. fav music band.")
let ironmaiden = favoriteElements(name: "iron maiden", imageName: "ironmaiden", description: "my 3. fav music band.")


let favoriteBands = favoriteModel(title: "Favorite Bands", elements: [metalica,megadeth,ironmaiden])
 
//Movies
let pulpfiction = favoriteElements(name: "Pulp Fiction", imageName: "pulpfiction", description: "my fav movie")
let thedarknight = favoriteElements(name: "The Dark Knight", imageName: "thedarknight", description: "my 2. fav movie.")
let killbill = favoriteElements(name: "Kill Bill", imageName: "killbill", description: "my 3. fav movie.")
 
let favoriteMovies = favoriteModel(title: "Favorite Movies", elements: [pulpfiction,thedarknight,killbill])


let myFavorites = [favoriteBands,favoriteMovies]



