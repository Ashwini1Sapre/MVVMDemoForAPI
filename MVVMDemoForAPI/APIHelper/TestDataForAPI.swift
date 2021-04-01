//
//  TestDataForAPI.swift
//  MVVMDemoForAPI
//
//  Created by Knoxpo MacBook Pro on 01/04/21.
//

import Foundation


struct TestDataForAPI {
   static let story: Items = {
        let url = Bundle.main.url(forResource: "Story", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        return try! decoder.decode(Items.self, from: data)
    
    }()
   
}
