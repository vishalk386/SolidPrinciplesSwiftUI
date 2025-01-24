//
//  APIServices.swift
//  SolidPrinciplesSwiftUI
//
//  Created by Vishal Kamble on 24/01/25.
//

import Foundation


class APIServices {
    func fetchData(completion: @escaping ([User]?, Error?) -> Void) {
            guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {
                completion(nil, NSError(domain: "APIServices", code: 1000, userInfo: [NSLocalizedDescriptionKey: "Invalid URL"]))
                return
            }
            URLSession.shared.dataTask(with: url) { (data, _, error) in
                if let error = error {
                    completion(nil, error)
                    return
                }
                
                guard let data = data else {
                    completion(nil, NSError(domain: "APIServices", code: 1001, userInfo: [NSLocalizedDescriptionKey: "No data received"]))
                    return
                }
                
                let decoder = JSONDecoder()
                 decoder.keyDecodingStrategy = .convertFromSnakeCase 
                
                do {
                    let users = try decoder.decode([User].self, from: data)
                    completion(users, nil)
                } catch {
                    completion(nil, error)
                }
            }.resume()
        }
    
}
