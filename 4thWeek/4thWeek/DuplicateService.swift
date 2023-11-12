//
//  DuplicatingCheckClass.swift
//  4thWeek
//
//  Created by 신지원 on 11/11/23.
//

import Foundation

class DuplicateService {
    static let shared = DuplicateService()
    private init() {}
    
    func makeRequestBody(isExist : Bool) -> Data? {
        do {
            let data = DuplicateResponseBody(isExist: isExist)
            let jsonEncoder = JSONEncoder()
            let requestBody = try jsonEncoder.encode(data)
            return requestBody
        } catch {
            print(error)
            return nil
        }
    }
    
    func makeResponse(username : String) -> URLRequest {
        let url = URL(string: "http://3.39.54.196/api/v1/members/check?username=\(username)")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let header = ["Content-Type": "application/json"]
        header.forEach {
            request.addValue($0.value, forHTTPHeaderField: $0.key)
        }
        
        return request
    }
    
    func GetRegisterData(username : String) async throws -> DuplicateResponseBody? {
        do {
            let request = self.makeResponse(username: username)
            let (data, response) = try await URLSession.shared.data(for: request)
            dump(request)
            guard let httpResponse = response as? HTTPURLResponse else {
                throw NetworkError.responseError
            }
            dump(response)
            return DuplicateResultData(data: data)
        } catch {
            throw error
        }
        
    }
    
    func DuplicateResultData(data: Data) -> DuplicateResponseBody? {
            do {
                let jsonDecoder = JSONDecoder()
                let result = try jsonDecoder.decode(DuplicateResponseBody.self, from: data)
                return result
            } catch {
                return nil
            }
        }
    
}
