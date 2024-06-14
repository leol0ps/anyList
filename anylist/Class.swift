//
//  Class.swift
//  anylist
//
//  Created by Turma01-9 on 14/06/24.
//

import Foundation

class ViewModel : ObservableObject{
    @Published var animes : [Anime] = []
    
    func fetchAni(){
        guard let url = URL(string : "https://api.jikan.moe/v4/top/anime") else{
            return
        }
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do{
                let decod = try JSONDecoder().decode(API.self, from: data)
                DispatchQueue.main.async{
                    self!.animes = decod.data
                }
                
            }catch{
                print(error)
            }
        }
        task.resume()
    }
    
}
