
import SwiftUI

struct SelectionView: View {
    @Binding var isPresentSelectionView: Bool
    @Binding var selection: String
    let prefectures = ["北海道", "青森県", "岩手県", "宮城県", "秋田県", "山形県", "福島県", "茨城県", "栃木県", "群馬県", "埼玉県", "千葉県", "東京都", "神奈川県", "新潟県", "富山県", "石川県", "福井県", "山梨県", "長野県", "岐阜県", "静岡県", "愛知県", "三重県", "滋賀見", "京都府", "大阪府", "兵庫県", "奈良県", "和歌山県", "鳥取県", "島根県", "岡山県", "広島県", "山口県", "徳島県", "香川県", "愛媛県", "高知県", "福岡県", "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県", "鹿児島県", "沖縄県" ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(prefectures, id: \.self) { prefecture in
                    Button(action: {
                        selection = prefecture
                        isPresentSelectionView = false
                    }) {
                        Text(prefecture)
                        Spacer()
                    }
                }
            }
            .listStyle(InsetListStyle())
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isPresentSelectionView = false
                    }) {
                        Text("cancel")
                    }
                }
//                ToolbarItem(placement: .principal) {
//                    Text("都道府県")
//                }
            }
            //こっちの方が適している
            .navigationTitle("都道府県")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SelectionView_Previews: PreviewProvider {
    @State static var isPresentSelectionView = true
    @State static var selection = "東京都"
    
    static var previews: some View {
        SelectionView(isPresentSelectionView: $isPresentSelectionView,
                      selection: $selection)
    }
}
