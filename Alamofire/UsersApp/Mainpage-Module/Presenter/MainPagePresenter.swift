//
//  MainPagePresenter.swift
//  UsersApp
//
//  Created by Yavuz Güner on 25.07.2022.
//

import Foundation

class MainPagePresenter:ViewToPresenterMainPageProtocol {
    var mainPageInteractor: PresenterToInteractorMainPageProtocol?
    
    var mainPageView: PresenterToViewMainPageProtocol?
    
    func loadAllUsers() {
        mainPageInteractor?.takeAllUsers()
    }
    
    func search(searchWord: String) {
        mainPageInteractor?.searchUser(searchWord: searchWord)
    }
    
    func delete(kisi_id: Int) {
        mainPageInteractor?.deleteUser(kisi_id: String(kisi_id))
    }
}

extension MainPagePresenter : InteractorToPresenterMainPageProtocol {
    func sendDataToPresenter(usersList: Array<Users>) {
        mainPageView?.sendDataToView(usersList: usersList)
    }
}
