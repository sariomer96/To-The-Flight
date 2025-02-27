import SwiftUI

struct FlightDetailView: View {
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView {
                VStack(alignment: .leading) {
                    ZStack(alignment: .bottomLeading) {
                        Image("airport") // Arka plan resmi
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.3)
                            .ignoresSafeArea() //  
                        
                        VStack(alignment: .leading) {
                            HStack {
                                Image("5")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                VStack(alignment: .leading) {
                                    Text("Munich Airport")
                                        .font(.title2)
                                        .bold()
                                        .foregroundColor(.white)
                                    Text("Lufthansa")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                }
                            }
                            .padding()
                        }
                        .background(Color.black.opacity(0.1))
                    }
                    
                    VStack(spacing: 10) {
                        HStack {
                            VStack {
                                Text("MUC")
                                    .font(.largeTitle)
                                    .bold()
                                Text("10:55")
                                    .font(.title2)
                                Text("Mon 21 Mar")
                                    .font(.caption)
                            }
                            Spacer()
                            Image(systemName: "airplane")
                                .font(.title)
                            Spacer()
                            VStack {
                                Text("BCN")
                                    .font(.largeTitle)
                                    .bold()
                                Text("12:55")
                                    .font(.title2)
                                Text("Mon 21 Mar")
                                    .font(.caption)
                            }
                        }
                        .padding()
                        FlightCardView()
                    }
                    .padding()
                }
            }
            .onAppear {
                proxy.scrollTo("bottom", anchor: .bottom)
            }
        }
        .background(Color(UIColor.white))
    }
}

struct FlightInfoCard: View {
    let title: String
    let value: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.subheadline)
                .foregroundColor(.gray)
            Text(value)
                .font(.title)
                .bold()
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 2)
    }
}

struct FlightDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FlightDetailView()
    }
}
