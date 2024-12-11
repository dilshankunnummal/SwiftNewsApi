//
//  Model.swift
//  ExamapiNews
//
//  Created by Adhil Hamid on 09/12/24.
//

import Foundation


struct articles : Codable{
    var articles : [articleitem]
}

struct articleitem : Codable{
    let id = UUID()
    var author:String?
    var title:String
    var urlToImage:String?
}
