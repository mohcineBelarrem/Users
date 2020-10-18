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
         
        HStack(spacing:20) {
            
            VStack(alignment: .leading, spacing: 5) {
                
                HStack {
                    Image(systemName: "person")
                        .foregroundColor(Color("textBlack"))
                    Text(user.name)
                        .foregroundColor(Color("textBlack"))
                }
                
                HStack {
                    Image(systemName: "number")
                        .foregroundColor(Color("textBlack"))
                    Text(user.username.lowercased())
                        .foregroundColor(.gray)
                        .font(.title3)
                }
                
                HStack {
                    Image(systemName: "envelope")
                        .foregroundColor(Color("textBlack"))
                    Text(user.email.lowercased())
                        .foregroundColor(.gray)
                        .font(.title3)
                }
                
            }
            Spacer()
            
            Image(systemName: "arrow.down.doc")
                .opacity(user.hasBeenLoaded ? 1.0 : 0.0)
                .foregroundColor(Color("textBlack"))
            
            Image(systemName: "chevron.right")
                .foregroundColor(Color("textBlack"))
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(user: User.dummyUser())
    }
}
