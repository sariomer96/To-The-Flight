import SwiftUI

struct MyFlightScreen: View {
    let flights = ["Munich Airport", "Barcelona Airport", "Munich Airport", "Barcelona Airport", "London Gatwick Airport", "Munich Airport", "Barcelona Airport","Munich Airport", "Barcelona Airport"]
    
    @State private var selectedTab: String = "home"
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    Text("My Flights")
                        .font(.system(size: 37))
                        .bold()
                        .padding(.leading)
                    Spacer(minLength: 20)
                }
                .padding(.top)
                
                List(flights, id: \ .self) { flight in
                    HStack {
                        Image(systemName: "airplane")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color(UIColor(red: 211/255, green: 211/255, blue: 211/255, alpha: 0.8)), lineWidth: 2))
                            .padding(.trailing, 10)
                        
                        VStack(alignment: .leading) {
                            Text(flight)
                                .font(.system(size: 24))
                                .bold()
                            HStack {
                                Text("BCN")
                                    .font(.system(size: 18))
                                    .foregroundColor(.gray)
                                Image(systemName: "airplane")
                                    .foregroundColor(.gray)
                                Text("MUC")
                                    .font(.system(size: 18))
                                    .foregroundColor(.gray)
                            }
                            Text("Arrival: 2:00 PM")
                                .font(.system(size: 18))
                                .foregroundColor(.gray)
                        }
                        Spacer(minLength: 20)
                    }
                    .frame(maxWidth: .infinity, minHeight: 70, alignment: .leading)
                    .padding()
                }
                .listStyle(PlainListStyle())
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                // Edit action
            }) {
                Text("Edit")
                    .font(.system(size: 20))
            })
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    HStack {
                        Spacer(minLength: 20)
                        HStack {
                            Button(action: {
                                selectedTab = "home"
                            }) {
                                Image(systemName: "airplane")
                                    .font(.system(size: 24))
                                    .foregroundColor(selectedTab == "home" ? .blue : .gray)
                            }
                            Spacer(minLength: 20)
                            Button(action: {
                                // Plus button action
                            }) {
                                ZStack {
                                    Circle()
                                        .fill(Color.blue)
                                        .frame(width: 80, height: 80)
                                    Image(systemName: "plus")
                                        .font(.system(size: 30))
                                        .foregroundColor(.white)
                                }
                            }
                            
                            Spacer(minLength: 20)
                            Button(action: {
                                selectedTab = "profile"
                            }) {
                                Image(systemName: "gearshape.fill")
                                    .font(.system(size: 24))
                                    .foregroundColor(selectedTab == "profile" ? .blue : .gray)
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width * 0.7, height: 60)
                        .background(Color(UIColor(red: 246/255, green: 247/255, blue: 250/255, alpha: 1)).cornerRadius(20))
                        Spacer(minLength: 20)
                    }
                }
            }
        }
    }
}
