//
//  ModelData.swift
//  SwiftUI Tutorial
//
//  Created by Abdullah Ridwan on 5/20/21.
//

import Foundation



//create array of landmarks given landmarkData.json
var landmarks: [LandMark] = load("landMarkData.json")


func load<T: Decodable> (_ filename: String) -> T {
    //initializations
    let data: Data
    let decoder = JSONDecoder()
    
    //get the file
    guard let fileURL = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("The file \(filename) does not exist in main bundle")
    }
    
    //get the contents of the file
    do{
        data = try Data(contentsOf: fileURL)
    }catch{
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    //return the JSON of that file
    do{
        //let decoder = JSONDecoder()  but i put it at top
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Could not decode")
    }
}
