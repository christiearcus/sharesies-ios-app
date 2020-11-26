import Foundation

struct SearchResults: Codable {
    var results: [SearchResult]
}

struct SearchResult: Codable, Identifiable {
    let logos: Logo
    let id: String
    let name: String
    let symbol: String
    let marketCap: Int
    let description: String
    let exchange: String
    let marketPrice: String
    let ceo: String
    let employees: Int
    let websiteUrl: String
}

struct Logo: Codable {
    var thumb: String
}
