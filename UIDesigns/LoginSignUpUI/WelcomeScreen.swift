//
//  WelcomeScreen.swift
//  UIDesigns
//
//  Created by kanishk vijaywargiya on 25/03/21.
//

import SwiftUI

struct WelcomeScreen: View {
    @State private var showingRegisterScreen = false
    @State private var showingLogInScreen = false
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.09803921569, green: 0.09019607843, blue: 0.1254901961, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image(uiImage: #imageLiteral(resourceName: "login"))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .padding(.horizontal, 20)
                
                Text("Enterprise team collaboration.")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.top, 30)
                    .font(.system(size: 40, weight: .semibold, design: .rounded))
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
                
                Text("Bring together your files, your tools, projects and people. Including a new mobile and desktop application.")
                    .padding()
                    .padding(.vertical, 20)
                    .padding(.horizontal,40)
                    .foregroundColor(.gray)
                    .font(.system(size: 18, weight: .light, design: .rounded))
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
                
                Spacer()
                
                HStack{
                    Button(action: {
                        self.showingRegisterScreen.toggle()
                    }){
                        Text("Register")
                            .padding()
                            .padding(.vertical, 5)
                            .padding(.horizontal, 25)
                            .background(Color.white)
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(.black)
                            .clipShape(RoundedRectangle(cornerRadius: 40))
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.secondary, lineWidth: 5)
                            )
                    }
                    .sheet(isPresented: $showingRegisterScreen){
                        RegisterView()
                    }
                    .padding(.horizontal, 20)
                    
                    Button(action: {
                        self.showingLogInScreen.toggle()
                    }){
                        Text("Sign In")
                            .padding()
                            .padding(.vertical, 5)
                            .padding(.horizontal, 25)
                            .background(Color(#colorLiteral(red: 0.2274509804, green: 0.2274509804, blue: 0.2549019608, alpha: 1)))
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 40))
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.secondary, lineWidth: 5)
                            )
                    }
                    .sheet(isPresented: $showingLogInScreen){
                        LogInView()
                    }
                    .padding(.horizontal, 20)
                }
            }
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
