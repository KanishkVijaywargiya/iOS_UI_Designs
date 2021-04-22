//
//  LogInView.swift
//  UIDesigns
//
//  Created by kanishk vijaywargiya on 25/03/21.
//

import SwiftUI

struct LogInView: View {
    @State private var fullName = ""
    @State private var password = ""
    
    @State private var showingRegisterScreen = false
    
    init(){
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.09803921569, green: 0.09019607843, blue: 0.1254901961, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                Text("Let's sign you in.")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .semibold, design: .rounded))
                    .padding(.horizontal, 30)
                
                Text("Welcome back. You've been missed!")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .regular, design: .rounded))
                    .padding(.horizontal, 30)
                    .padding(.top, 20)
                    .multilineTextAlignment(.leading)
                
                Form{
                    Section{
                        TextField("Phone, email or username", text: $fullName)
                    }
                    Section{
                        TextField("Password", text: $password)
                    }
                }
                Spacer()
                
                HStack{
                    Text("Don't have an account?")
                        .foregroundColor(.gray)
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 15)
                    
                    Button(action: {
                        self.showingRegisterScreen.toggle()
                    }){
                        Text("Register")
                            .foregroundColor(.white)
                            .font(.body)
                            .padding(.bottom, 15)
                    }
                    .sheet(isPresented: $showingRegisterScreen){
                        RegisterView()
                    }
                }
                .frame(maxWidth: .infinity)
                
                Button(action: {}){
                    Text("Sign In")
                        .padding(.vertical, 20)
                        .padding(.horizontal, 120)
                        .background(Color.white)
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.secondary, lineWidth: 5)
                        )
                }
                .frame(maxWidth: .infinity)
            }
            .padding(.top, 20)
            .frame(maxWidth: .infinity)
        }
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
