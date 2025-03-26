//
//  ContentView.swift
//  SwiftTodo
//
//  Created by Tommy Alhamra on 25/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing:20){
                HandView()
                FormBox()
                    .padding()
            }
            .padding(.all, 20)
        }
    }
}

struct HandView: View {
    var body: some View {
        VStack{
            Image("mcode")
                .resizable()
                .frame(width: 100, height: 100)
                .background(Color("CustomColor"))
                .foregroundColor(Color.white)
                .padding()
                .background(Color("CustomColor"))
                .cornerRadius(20)
            
            Text("Murid Coding")
                .foregroundStyle(Color.white)
        }
    }
}

struct FormBox: View{
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View{
        VStack(alignment: .leading) {
            Text("Username").font(.callout).bold()
            
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Password").font(.callout).bold()
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                print("Login Success")
                print($username, $password)
            }){
                HStack{
                    Text("Sign In")
                    Spacer()
                }
            }
            .padding()
            .background(Color("CustomColor"))
            .foregroundStyle(Color.white)
            .cornerRadius(8)
        }
        .padding(.all, 30)
        .background(Color.blue)
        .cornerRadius(10)
    }
}

#Preview {
    ContentView()
}
