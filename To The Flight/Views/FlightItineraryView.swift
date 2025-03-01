import SwiftUI

struct FlightItineraryView: View {
    @State private var selectedStep = 1
    let circleCount = 5
    let circleRadius: CGFloat = 30

    var body: some View {
        GeometryReader { geo in
            ZStack {
                
               
                Group {
                    switch selectedStep {
                    case 1:
                        Color.white.edgesIgnoringSafeArea(.all) // Beyaz arkaplan
                        
                    case 2, 3:
                        // "map" ve "ar" resimleri için ortak işlem
                        let imageName = selectedStep == 2 ? "map" : "ar"
                        Image(imageName) // "map" veya "ar" ismindeki resmi kullan
                            .resizable()
                            .scaledToFill()
                            .edgesIgnoringSafeArea(.all)
                            .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                    default:
                        Color.clear.edgesIgnoringSafeArea(.all) // Varsayılan olarak saydam bir arkaplan
                    }
                }
             
                    VStack {
                        Picker("Adım Seç", selection: $selectedStep) {
                            Text("📋 Itinerary").tag(1)
                            Text("🗺 Map").tag(2)
                            Text("🕶 AR Guide").tag(3)
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        .padding()

                        if selectedStep == 1 {
                            
                            ProgressView(circleRadius: circleRadius, circleCount: circleCount)
                            Spacer()
                        }  else {
                            Spacer()
                        }

                        Button(action: {
                            // Apple Wallet açma işlemi
                        }) {
                            HStack {
                                Image(systemName: "wallet.pass")
                                Text("Open documents on Apple Wallet")
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding(.horizontal, 20)
                        }
                        .padding(.bottom, 24) // Safe Area uyumu için
                    }
                    .ignoresSafeArea(.keyboard, edges: .bottom)
                    .navigationBarItems(trailing: EditButtonVie(text: "Done", destination: MyFlightScreen()))
                
            }
        }
    }
}

struct EditButtonVie<Destination: View>: View {
    var text: String
    var destination: Destination

    var body: some View {
        NavigationLink(destination: destination) {
            Text(text)
                .font(.system(size: 20))
                .bold()
        }
    }
}

struct ExtractedScrollView: View {
    let circleCount: Int
    let circleRadius: CGFloat
    let height: CGFloat

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                ForEach(0..<circleCount, id: \.self) { index in
                    if index == 1 {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: circleRadius, height: circleRadius)
                    } else {
                        Circle()
                            .stroke(Color.blue, lineWidth: 3)
                            .frame(width: circleRadius, height: circleRadius)
                    }

                    if index < circleCount - 1 {
                        Rectangle()
                            .fill(Color.black)
                            .frame(width: 3, height: 60)
                    }
                }
            }
            .frame(width: 50)
            .padding(.top, 10)
            .padding(.leading, 16)
        }
        .frame(height: height)
    }
}

struct FlightItineraryView_Previews: PreviewProvider {
    static var previews: some View {
        FlightItineraryView()
    }
}

struct ProcessView: View {
    var circleRadius: CGFloat
    var circleCount: Int

    var body: some View {
        HStack(spacing: 10) {
            GeometryReader { geo in
                ExtractedScrollView(circleCount: circleCount, circleRadius: circleRadius, height: geo.size.height * 0.8)
                    .frame(width: 80)
            }
            .frame(width: 80)

            VStack(alignment: .leading, spacing: 44) {
                VStack(alignment: .leading) {
                    Text("Airport arrival \n Terminal 2 ").bold()
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)

                    Text("08:55 am recommended")
                        .fontWeight(.light)
                }
                VStack(alignment: .leading) {
                    Text("Check - in & baggage drop Lufthansa Desk Level 04 ").bold()
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)

                    Text("10:25 am end of baggage drop")
                        .fontWeight(.light)
                }

                Text("Security Check").bold()

                VStack(alignment: .leading) {
                    Text("Gate K6").bold()
                    Text("10:45 am close")
                        .fontWeight(.light)
                }
                VStack(alignment: .leading) {
                    Text("Plane \n BCN LH2656").bold()
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)

                    Text("10:55 am departure")
                        .fontWeight(.light)
                }
            }
            .padding(.bottom, 110)
        }
    }
}

struct ProgressView: View {
    var circleRadius: CGFloat
    var circleCount: Int

    var body: some View {
        Group {
            Text("Gate closes in \n 1h 4m")
                .font(.largeTitle)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)

            Spacer()

            ProcessView(circleRadius: circleRadius, circleCount: circleCount)

            Spacer()
        }
    }
}
