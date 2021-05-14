//
//  UsersViewController.swift
//  HttpWebServiceCall
//
//  Created by yang wulong on 14/5/21.
//

import UIKit

class UsersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var usersViewViewModel = UsersViewViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadUsers()
    }
    private func loadUsers() {
        let resource = Resource<[User]>(url: WebApiUrl.getUsersUrl())
        Webservice().load(resource: resource) { result in
            switch result {
            case .success(let users):
                self.usersViewViewModel.usersViewModel = users.map(UserViewViewModel.init)
                self.tableView.reloadData()
            case .failure(let error):
                print(error)
            }
        }
    }
}
extension UsersViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersViewViewModel.usersViewModel.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let viewModel = self.usersViewViewModel.userViewModel(at: indexPath.row)
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath)
        cell.textLabel?.text = viewModel.name
        return cell
    }
}
