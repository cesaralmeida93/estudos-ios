//
//  Service.swift
//  PokedexMVC
//
//  Created by GSW Mobile Team on 19/06/20.
//  Copyright © 2020 GSW Mobile Team. All rights reserved.
//

import Foundation

class Service {
    
    static let shared = Service()
    let BASE_URL = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    func fetchPokemon() {
        
        guard let url = URL(string: BASE_URL) else {return}
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                print("Failed to fetch data with error: ", error.localizedDescription)
            }
            
            guard let data = data else {return}
            
            do {
                guard let resultArray = try JSONSerialization.jsonObject(with: data, options: []) as? [AnyObject] else {return}
                
                for(key, result) in resultArray.enumerated() {
                    if let dictionary = result as? [String: AnyObject] {
                        let pokemon = Pokemon(id: key, dictionary: dictionary)
                        print(pokemon.name)
                    }
                }
            
            } catch let error {
                print("Failed to create JSON with error", error.localizedDescription)
            }
        }.resume()
    }
    
}
