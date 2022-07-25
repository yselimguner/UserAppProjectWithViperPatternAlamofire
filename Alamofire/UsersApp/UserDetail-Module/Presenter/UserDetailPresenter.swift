//
//  UserDetailPresenter.swift
//  UsersApp
//
//  Created by Yavuz Güner on 25.07.2022.
//

import Foundation

class UserDetailPresenter:ViewToPresenterUserDetailProtocol {

    
    var userDetailInteracor: PresenterToInteractorUserDetailProtocol?
    
    func update(kisi_id: Int, kisi_ad: String, kisi_tel: String) {
        userDetailInteracor?.userUpdate(kisi_id: (kisi_id), kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
    
    
}
