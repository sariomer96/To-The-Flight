import SwiftUI

struct OnBoardingScreen: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button(action: {
                        // Skip butonuna tıklanınca yapılacak işlemler
                    }) {
                        Text("Skip")
                            .foregroundColor(.gray)
                            .padding()
                    }
                    Spacer()
                }
                
                HStack(spacing: 15) {
                    Rectangle()
                        .frame(width: 75, height: 7)
                        .foregroundColor(.blue)
                        .cornerRadius(10)
                    Rectangle()
                        .frame(width: 75, height: 7)
                        .foregroundColor(.gray)
                        .cornerRadius(10)
                    Rectangle()
                        .frame(width: 75, height: 7)
                        .foregroundColor(.gray)
                        .cornerRadius(10)
                    Rectangle()
                        .frame(width: 75, height: 7)
                        .foregroundColor(.gray)
                        .cornerRadius(10)
                }
                .padding(.top, 15)
           
                HStack(spacing: 50) {
                    VStack(alignment: .leading) {
                        Text("MUC").fontWeight(.heavy)
                            .font(.system(size: 36))
                        Text("10:55") .bold()
                        Text("Mon 21 Mar").foregroundColor(.gray)
                    }
                    
                    Image(systemName: "airplane").imageScale(.large)
                    
                    VStack(alignment: .leading) {
                        Text("BCN").fontWeight(.heavy)
                            .font(.system(size: 36))
                        Text("10:55") .bold()
                        Text("Mon 21 Mar").foregroundColor(.gray)
                    }
                } .padding(.top , 30)
                
                RoundedRectangle(cornerRadius: 10)
    
                    .fill(Color.gray.opacity(0.25))
                                   .frame(height: 340)
                                   .overlay(
                                   
                                    VStack(spacing: 10) {
                                        HStack(spacing: 50) {
                                            Text("Flight Number").foregroundColor(.gray)
                                            Text("LH2656 (Barcelona)").bold()
                                        }
                                        HStack(spacing: 127) {
                                            Text("Airline").foregroundColor(.gray)
                                            HStack(spacing: 5) {
                                                Image("5")
                                                Text("Lufthansa").fontWeight(.heavy)
                                                
                                            }
                                          
                                        }
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(Color.white)
                                                    .frame(height: 100)
                                                    .shadow(radius: 2)
                                                    .overlay(
                                                        VStack(alignment: .leading) {
                                                            Text("Departure Airport").foregroundColor(.gray)
                                                          
                                                            Text("Munich International Airport")
                                                                .bold()
                                                            Text("Franz Josef Strauss")
                                                                .bold()
                                                        }
                                                            .frame(maxWidth: .infinity, alignment: .leading)
                                                                 .padding(.leading, 10)
                                                        
                                                    )
                                                                
                                                        HStack(spacing: 10) {
                                                            RoundedRectangle(cornerRadius: 10 )
                                                                .fill(Color.white)
                                                                .frame(height: 100)
                                                                .shadow(radius: 2)
                                                                .overlay(
                                                                           VStack {
                                                                               HStack {
                                                                               Text("Terminal:")
                                                                                       .foregroundColor(.gray)
                                                                                   .font(.headline)
                                                                                   .padding(.top, 5)
                                                                                   .padding(.leading, 10)
                                                                                   Spacer()
                                                                               }
                                                                               Spacer()
                                                                               Text("2")
                                                                                   .font(.largeTitle)
                                                                                   .fontWeight(.heavy)
                                                                                   .padding(.bottom, 25)
                                                                           }
                                                                           .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                                                       )
                                                            
                                                            RoundedRectangle(cornerRadius: 10)
                                                                .fill(Color.white)
                                                                .frame(height: 100)
                                                                .shadow(radius: 2)
                                                                .overlay(
                                                                           VStack {
                                                                               HStack {
                                                                               Text("Gate:")
                                                                                       .foregroundColor(.gray)
                                                                                   .font(.headline)
                                                                                   .padding(.top, 5)
                                                                                   .padding(.leading, 10)
                                                                                   Spacer()
                                                                               }
                                                                               Spacer()
                                                                               Text("K6")
                                                                                   .font(.largeTitle)
                                                                                   .fontWeight(.heavy)
                                                                                   .padding(.bottom, 25)
                                                                           }
                                                                           .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                                                       )                                                        }
                                                            }
                                        .padding()
                                   
                                   )
                VStack(alignment: .leading ) {
           
                    Text("Don't you fly today?")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    HStack() {
                        Image(systemName: "calendar").foregroundColor(.blue)
                        Text("Select your flight date").foregroundColor(.blue)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                   
                }         .padding(.top , 20)
                   Spacer()
                
                HStack(spacing: 80) {
                    Button(action: {
                        print("Butona tıklandı!")
                    }) {
                        Text("Back")
                            .padding()
                            .frame(width: 123, height: 44) // Buton boyutunu ayarlamak için
                            .background(Color.white)
                            .foregroundColor(.gray)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        print("Butona tıklandı!")
                    }) {
                        Text("Next")
                            .padding()
                            .frame(width: 123, height: 44) // Buton boyutunu ayarlamak için
                            .background(Color.blue)
                            .foregroundColor(.white)
                             
                            .cornerRadius(10)
                    }

                }
                Spacer()
                 
              
            }
            .padding()
        }
    }
}

#Preview {
    OnBoardingScreen()
}
