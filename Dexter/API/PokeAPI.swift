//
//  PokeAPI.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/23/23.
//

import Foundation

class PokeAPI {
    static let shared = PokeAPI()

    private let apiBaseUrl = "https://pokeapi.co/api/v2"
    private let service = APIService()

    typealias Completion<T> = (Result<T, Error>) -> Void

    func fetchResourceList(endpoint: APIEndpoint, offset: Int, limit: Int, completion: @escaping Completion<NamedAPIResourceList>) {
        let url = "\(apiBaseUrl)/\(endpoint.rawValue)?offset=\(offset)&limit=\(limit)"
        service.perform(for: NamedAPIResourceList.self, from: url, completion: completion)
    }

    func fetchResource<T: Decodable>(endpoint: APIEndpoint, slug: String, completion: @escaping Completion<T>) {
        let url = "\(apiBaseUrl)/\(endpoint.rawValue)/\(slug)"
        service.perform(for: T.self, from: url, completion: completion)
    }

    func fetchResource<T: Decodable>(endpoint: APIEndpoint, slug: Int, completion: @escaping Completion<T>) {
        fetchResource(endpoint: endpoint, slug: String(slug), completion: completion)
    }
}
