import SwiftUI

struct OnBoardingScreen: View {
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    HStack {
                        Button(action: {
                            
                        }) {
                            Text("Skip")
                                .foregroundColor(.gray)
                                .padding()
                        }
                        Spacer()
                    }
                    ProgressIndicator(activeIndex: 0)
                        .padding(.top, 15)

                    HStack(spacing: 50) {
                        VStack(alignment: .leading) {
                            Text("MUC").fontWeight(.heavy)
                                .font(.system(size: 36))
                            Text("10:55").bold()
                            Text("Mon 21 Mar").foregroundColor(.gray)
                        }

                        Image(systemName: "airplane").imageScale(.large)

                        VStack(alignment: .leading) {
                            Text("BCN").fontWeight(.heavy)
                                .font(.system(size: 36))
                            Text("10:55").bold()
                            Text("Mon 21 Mar").foregroundColor(.gray)
                        }
                    }.padding(.top, 30)

                    FlightCardView()

                    VStack(alignment: .leading) {
                        Text("Don't you fly today?")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        HStack {
                            Image(systemName: "calendar").foregroundColor(.blue)
                            Text("Select your flight date").foregroundColor(.blue)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.top, 20)
                    
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
 
#Preview {
    OnBoardingScreen()
}
