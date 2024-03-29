import UIKit
import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

extension URL {
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.compactMap { URLQueryItem(name: $0.0, value: $0.1)}
        
        return components?.url
    }
}


let baseURL = URL(string: "https://api.nasa.gov/planetary/apod")!

let query: [String: String] = [
    "api_key": "t76sJJfSk5KSVmLUrQdkpe5ihJHKeViyHGxlTNLs",
    "date": "2019-08-23"
]
let url = baseURL.withQueries(query)
let task = URLSession.shared.dataTask(with: url!) { (data, respone, error) in
    if let data = data {
        let string = String(data: data, encoding: .utf8)
        print(string ?? "")
    }
}
task.resume()

