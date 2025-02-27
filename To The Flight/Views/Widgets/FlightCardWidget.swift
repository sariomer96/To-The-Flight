import SwiftUI

struct FlightCardView: View {
    var body: some View {
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
                        RoundedRectangle(cornerRadius: 10)
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
                            )
                    }
                }
                    .padding()
            )
    }
}
