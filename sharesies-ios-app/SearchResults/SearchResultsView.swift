import Foundation
import SwiftUI

struct SearchRow: View {
    var searchResult: SearchResult
    
    var body: some View {
        HStack {
            Text(searchResult.name)
            Text(searchResult.symbol)
            Text(String(searchResult.marketCap))
        }
    }
}

struct SearchScreen: View {
    var body: some View {
        let data = readLocalFile(forName: "searchResults")
        let parsed = parse(jsonData: data!)
        
        NavigationView {
            List(parsed) {
                    result in
                NavigationLink(destination: InstrumentDetail(instrument: result)) {
                            SearchRow(searchResult: result)
                }
            }
        }.navigationBarTitle(Text("Search results"))
        
    }
    
    private func readLocalFile(forName name: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: name,
                                                 ofType: "json"),
                let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print(error)
        }
        
        return nil
    }


    private func parse(jsonData: Data) -> [SearchResult] {
        do {
            let decodedData = try! JSONDecoder().decode([SearchResult].self,
                                                       from: jsonData)
            
            print("decoded search result: ", decodedData[0])
            return decodedData
        }
    }
}
