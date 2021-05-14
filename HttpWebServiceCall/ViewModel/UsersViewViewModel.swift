//
//  ContentViewViewModel.swift
//  HttpWebServiceCall
//
//  Created by yang wulong on 14/5/21.
//

import Foundation

struct UsersViewViewModel {
    var usersViewModel: [UserViewViewModel]
    init() {
        self.usersViewModel = [UserViewViewModel]()
    }
}
extension UsersViewViewModel {
    func userViewModel(at index: Int) -> UserViewViewModel {
        return self.usersViewModel[index]
    }
}
extension UsersViewViewModel {
    
}


// MARK: userViewModel
struct UserViewViewModel {
    let user: User
}
extension UserViewViewModel {
    var id: String {
        return self.user.id
    }
    var name: String {
        return self.user.name
    }
    var createdAt: String {
        return self.user.createdAt
    }
    var avatar: String {
        return self.user.avatar
    }
}
