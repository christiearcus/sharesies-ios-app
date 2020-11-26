import Foundation
import SwiftUI

struct InstrumentDetail: View {
    var instrument: SearchResult
    
    var body: some View {
        VStack(alignment: .leading) {
//            Text(instrument.logos)
            Text(instrument.name).font(.headline)
            HStack {
                Text(instrument.symbol)
                Text("|")
                Text(instrument.exchange)
            }.font(.subheadline)
            Spacer()
            Text("$" + instrument.marketPrice).font(.system(size: 30))
            Spacer()
            Text(instrument.description).font(.system(size: 16))
            Spacer()
            Text("CEO: " + instrument.ceo)
            Text("Employees: " + String(instrument.employees))
            Text("Website: " + instrument.websiteUrl)
        }.padding(.all, 30)
    }
}

