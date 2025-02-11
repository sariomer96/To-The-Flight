import SwiftUI
struct HeaderView: View {
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 37))
                .bold()
                .padding(.leading)
            Spacer()
        }
        .padding(.top)
    }
}
