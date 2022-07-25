//
//  UserRegistrationPresenter.swift
//  UsersApp
//
//  Created by Yavuz Güner on 25.07.2022.
//

import Foundation

class UserRegistrationPresenter:ViewToPresenterUserRegistrationProtocol {
    var userRegistrationInteracor: PresenterToInteractorUserRegistrationProtocol?
    
    func Add(kisi_ad: String, kisi_tel: String) {
        userRegistrationInteracor?.userAdd(kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
    
    
}
