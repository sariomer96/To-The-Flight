import SwiftUI

struct ProgressIndicator: View {
    var activeIndex: Int
    let totalBars = 4
    
    var body: some View {
        HStack(spacing: 15) {
            ForEach(0..<totalBars, id: \.self) { index in
                Rectangle()
                    .frame(width: 75, height: 7)
                    .foregroundColor(index <= activeIndex ? .blue : .gray)
                    .cornerRadius(10)
            }
        }
    }
}
