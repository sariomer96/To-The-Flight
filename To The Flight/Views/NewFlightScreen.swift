import SwiftUI
struct NewFlightScreen: View {
    @State private var isMainScreenPresented = false
    @State private var textFieldInput: String = ""

    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()

            VStack (alignment: .leading) {
                HStack {
                    Button("Close") {
                        withAnimation {
                            isMainScreenPresented = true
                        }
                    }
                    .padding()
                    .foregroundColor(.gray)

                    Spacer()
                }

                Text("Let’s find out how to get")
                    .font(.system(size: 19.5, weight: .bold))
                    .foregroundColor(.black)
                    .padding(.leading, 16)
                    .padding(.top, 36)

                Text("To The Plane!")
                    .font(.system(size: 45, weight: .heavy))
                    .foregroundColor(.black)
                    .padding(.leading, 16)
                    .padding(.top, 8)

                Text("What is your Flight Number?")
                    .font(.system(size: 16, weight: .light))
                    .foregroundColor(.gray)
                    .padding(.leading, 16)
                    .padding(.top, 8)

                TextField("ex. AA3456", text: $textFieldInput)
                    .padding()
                    .background(Color(UIColor(red: 242/255, green: 242/255, blue: 247/255, alpha: 1)))
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    .padding(.horizontal, 16)
                    .padding(.top, 16)

                Button(action: {
                    print("Butona tıklandı, gönderme işlemi yapılabilir.")
                }) {
                    HStack {
                        Text("Find The Way")
                            .font(.system(size: 18, weight: .bold))
                        Image(systemName: "airplane")
                            .font(.system(size: 18, weight: .bold))
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
                }
                .padding(.horizontal, 16)

                Spacer()

                Image("plane")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            }
        }
        .fullScreenCover(isPresented: $isMainScreenPresented) {
            MyFlightScreen()
        }
        .keyboardAdaptive() // Klavye açılınca ekranı kaydıran modifier
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        NewFlightScreen()
    }
}
