//
//  ViewModel.swift
//  ExamapiNews
//
//  Created by Adhil Hamid on 09/12/24.
//

import Foundation



class ExamModel : ObservableObject{
    
    @Published var recipeList = [articleitem]()
    @Published var finallist = [articleitem]()
    
    init(){
        loadApi()
    }
    
    func loadApi(){
        let apiurl = URL(string: "https://newsapi.org/v2/everything?q=tesla&from=2024-11-09&sortBy=publishedAt&apiKey=b797c05446f840ff8b4d855424972abc")
        
        let dataTask = URLSession.shared.dataTask(with: apiurl!) {
            data,response,error in print("error")
            
            if data == nil && data != nil {
                let datalist = try! JSONDecoder().decode(articles.self, from: data!)
                
                DispatchQueue.main.async{
                    self.recipeList = datalist.articles
                }
            }
        }
        dataTask.resume()
    }
    
    func favouriteList(_ items : articleitem){
        if !finallist.contains(where: {$0.id == items.id}){
            finallist.append(items)
        }
    }
}
