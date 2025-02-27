import SwiftUI

struct OnBoardingScreen3: View {
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
                    ProgressIndicator(activeIndex: 2)
                        .padding(.top, 15)

                    HeaderView(title: "Any baggage \n to drop off ?")
                        .fontWeight(.heavy)
                        .padding(.bottom , 16)
                       
                    HStack {
                        Text("Tap yes ")
                            .bold() +
                        Text("if you need to drop off large suitcases or you don’t have the boarding pass yet.")
                            .fontWeight(.light)

                        Spacer()
                    }.padding(.top , 24)

                    HStack {
                        Text("Tap no ")
                            .bold() +
                        Text("if you dont need to go to Lufthansa desk first and you can go directly to the security checkpoint.")
                            .fontWeight(.light)

                        Spacer()
                    }.padding(.top, 24)

                    VStack(alignment: .leading ) {
 
                    }.padding(.top, 24)
                        .padding(.leading , 36)
                    
                   
                    Spacer()
                    Button(action: {
                        print("Button tapped")
                    }) {
                        Text("Yes, go to Luftansa desk")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .frame(maxWidth: UIScreen.main.bounds.width * 0.7, minHeight: 44)
                            .background(Color.blue)
                            .cornerRadius(8)
                    }

                    Button(action: {
                        print("Button tapped")
                    }) {
                        Text("No, go to security check point")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .frame(maxWidth: UIScreen.main.bounds.width * 0.7, minHeight: 44)
                            .background(Color.blue)
                            .cornerRadius(8)
                    }.padding(.top , 16)

                    Spacer()
                    HStack {
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
                        Spacer() // Sağ tarafta boşluk bırakır, butonu sola iter
                    }
                    .frame(maxWidth: .infinity, alignment: .leading) // HStack'in genişliğini tam yapıp butonu sola yaslar


                    
                    Spacer()
                }
                .padding()
            }
        }
    }
}
 
#Preview {
    OnBoardingScreen3()
}
