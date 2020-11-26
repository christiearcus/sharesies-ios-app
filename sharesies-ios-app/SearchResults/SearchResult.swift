import Foundation

struct SearchResults: Codable {
    var results: [SearchResult]
}

struct SearchResult: Codable, Identifiable {
    let id: String
    let name: String
    let symbol: String
    let marketCap: Int
}
