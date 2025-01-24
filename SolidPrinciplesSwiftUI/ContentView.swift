//
//  ContentView.swift
//  SolidPrinciplesSwiftUI
//
//  Created by Vishal Kamble on 24/01/25.
//

import SwiftUI

struct ContentView: View {
    @State private var user: [User] = []
    var body: some View {
        NavigationView{
            List(user){
                user in
                
                VStack(alignment: .leading){
                    Text(user.name)
                        .font(.headline)
                    Text(user.email)
                        .font(.caption)
                }
            }
            .onAppear(){
                APIServices().fetchData(){
                    user, error in
                    if let error = error{
                        print(error.localizedDescription)
                        return
                    }
                    guard let user = user else {
                        print(" no data found")
                        return
                    }
                    self.user = user
                    
                }
            }
        }.navigationTitle("Users")
    }

}

#Preview {
    ContentView()
}
