//
//  UserView.swift
//  Users
//
//  Created by Mohcine BELARREM on 16/10/2020.
//

import SwiftUI

struct UserView: View {
    
    @State var user : User
    
    var body: some View {
         
        HStack() {
            
            VStack(alignment: .leading, spacing: 5) {
                
                HStack {
                    Image(systemName: "person")
                    Text(user.name)
                }
                
                HStack {
                    Image(systemName: "number")
                    Text(user.username.lowercased())
                        .foregroundColor(.gray)
                        .font(.title3)
                }
                
                HStack {
                    Image(systemName: "envelope")
                    Text(user.email.lowercased())
                        .foregroundColor(.gray)
                        .font(.title3)
                }
                
            }
            Spacer()
            Image(systemName: "chevron.right")
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(user: dummyUser)
    }
}
