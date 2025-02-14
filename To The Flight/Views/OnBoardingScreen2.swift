import SwiftUI

struct OnBoardingScreen2: View {
    var body: some View {
        NavigationStack {
            ZStack {
                VStack() {
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
                    ProgressIndicator(activeIndex: 1)
                        .padding(.top, 15)

                    HeaderView(title: "Get your documents\n ready")
                        .fontWeight(.heavy)
                        .padding(.bottom , 16)
                       
                    HStack() {
                        Text("You will need to following documents:")
                            .fontWeight(.light)
                            .padding(.leading)
                        Spacer()
                    }
               
                    VStack(alignment: .leading ) {
                        HStack() {
                            Image(systemName: "person.text.rectangle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)

                            Text("Passport or id card")
                            Spacer()
                        }
                        HStack {
                            Image(systemName: "qrcode")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                            Text("Boarding pass")
                            Spacer()
                        }
                        HStack {
                            Image(systemName: "facemask")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                            Text("COVID-19 Passport\n or negative PCR test")
                            Spacer()
                        }
                    }.padding(.top, 24)
                        .padding(.leading , 36)
                    
                    Button(action: {
                        // Butona basılınca yapılacak işlemler
                    }) {
                        HStack {
                            Image(systemName: "wallet.pass") // Cüzdan ikonu
                                .font(.title2) // İkon boyutu
                                .foregroundColor(.white)
                            Text("Open Apple Wallet")
                                .fontWeight(.semibold)
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: UIScreen.main.bounds.width * 0.85  , maxHeight: 44) // %75 genişlik
                        .background(Color.black)
                        .cornerRadius(10)
                    }.padding(.top, 72)

                    
                    
                    Spacer()

                    HStack(spacing: 80) {
                        Button(action: {
                            print("Geri butonuna tıklandı!")
                        }) {
                            Text("Back")
                                .padding()
                                .frame(width: 123, height: 44)
                                .background(Color.white)
                                .foregroundColor(.gray)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.gray, lineWidth: 1)
                                )
                                .cornerRadius(10)
                        }

                        // *** HATA BURADA: Button yerine NavigationLink Kullanılmalı ***
                        NavigationLink(destination: OnBoardingScreen2()) {
                            Text("Next")
                                .padding()
                                .frame(width: 123, height: 44)
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
}

 

// Önizleme
#Preview {
    OnBoardingScreen2()
}
