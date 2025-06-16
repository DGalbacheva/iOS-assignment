//
//  DetailsModel.swift
//  iOS-assignment
//
//  Created by MacBook Pro 15 on 16.06.2025.
//

import Foundation

struct DetailsModel: Decodable {
    let id: String?
    let title: String?
    let price: String?
    let location: String?
    let imageUrl: String?
    let createdDate: String?
    let description: String?
    let email: String?
    let phoneNumber: String?
    let address: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case price = "price"
        case location = "location"
        case imageUrl = "imageUrl"
        case createdDate = "createdDate"
        case description = "description"
        case email = "email"
        case phoneNumber = "phoneNumber"
        case assress = "assress"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        price = try values.decodeIfPresent(String.self, forKey: .price)
        location = try values.decodeIfPresent(String.self, forKey: .location)
        imageUrl = try values.decodeIfPresent(String.self, forKey: .imageUrl)
        createdDate = try values.decodeIfPresent(String.self, forKey: .createdDate)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        email = try values.decodeIfPresent(String.self, forKey: .email)
        phoneNumber = try values.decodeIfPresent(String.self, forKey: .phoneNumber)
        address = try values.decodeIfPresent(String.self, forKey: .address)
    }
}
