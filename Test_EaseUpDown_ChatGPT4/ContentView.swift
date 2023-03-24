import SwiftUI

struct ContentView: View {
    @State private var expandedRow: Int? = nil

    var body: some View {
        List {
            ForEach(0..<10, id: \.self) { index in
                VStack {
                    HStack {
                        Text("Row \(index)")
                        Spacer()
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        if expandedRow == index {
                            expandedRow = nil
                        } else {
                            expandedRow = index
                        }
                    }

                    if expandedRow == index {
                        DetailView()
                            //.transition(.slide)
                            //.animation(.easeInOut(duration: 1), value: expandedRow)
                    }
                }
            }
        }
    }
}

struct DetailView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color(red: 0.9, green: 0.9, blue: 1.0))
            .frame(height: 100)
            //.padding(.top, 8)
            //.padding([.leading, .trailing], 6)            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
