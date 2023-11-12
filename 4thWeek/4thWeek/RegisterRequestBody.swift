//
//  File.swift
//  4thWeek
//
//  Created by 신지원 on 11/11/23.
//

import Foundation

struct RegisterRequestBody: Codable {
    let username: String
    let password: String
    let nickname: String
}
