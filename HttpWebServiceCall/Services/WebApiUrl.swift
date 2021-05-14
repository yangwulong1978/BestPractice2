//
//  WebApiUrl.swift
//  HttpWebServiceCall
//
//  Created by yang wulong on 14/5/21.
//

import Foundation

class WebApiUrl {
    static var baseUrl = "https://609de41733eed80017957466.mockapi.io"
    public static func getUsersUrl() -> URL {
        return URL(string: baseUrl + "/users")!
    }
}
