import SwiftUI

struct OnBoardingScreen4: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("img")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .ignoresSafeArea()
                
                    .offset(y: 100)

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
                    
                    ProgressIndicator(activeIndex: 3)
                        .padding(.top, 15)

                    HeaderView(title: "Relax,\nYou are on time!")
                        .fontWeight(.heavy)
                        .padding(.bottom, 16)

                    Spacer()
                    
                    HStack {
                        Spacer()  

                        Button(action: {
                            print("Geri butonuna tıklandı!")
                        }) {
                            Text("Back")
                                .padding()
                                .frame(width: 123, height: 44)
                                .background(Color.white.opacity(0.8))
                                .foregroundColor(.gray)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(Color.gray, lineWidth: 1)
                                )
                                .cornerRadius(10)
                        }

                        Spacer(minLength: 72)

                        Button(action: {
                            print("Go! butonuna tıklandı!")
                        }) {
                            Text("Go!")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 123, height: 44)
                                .background(Color.blue)
                                .cornerRadius(12)
                                .shadow(radius: 5)
                        }

                        Spacer()
                    }
                    .frame(maxWidth: .infinity)

                    .padding(.bottom, 40)
                }
                .padding()
            }
        }
    }
}

#Preview {
    OnBoardingScreen4()
}
