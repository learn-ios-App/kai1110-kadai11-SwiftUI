
import SwiftUI

struct ContentView: View {
    @State var selection = "未選択"
    @State var isPresentSelectionView = false
    
    var body: some View {
        HStack(spacing: 60) {
            Text("都道府県")
            Text("\(selection)")
            Button(action: {
                isPresentSelectionView = true
            }) {
                Text("変更")
            }
            .sheet(isPresented: $isPresentSelectionView) {
                SelectionView(isPresentSelectionView: $isPresentSelectionView,
                              selection: $selection)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
