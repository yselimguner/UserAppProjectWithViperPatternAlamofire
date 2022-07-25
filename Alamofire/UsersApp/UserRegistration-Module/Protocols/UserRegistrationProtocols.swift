//
//  UserRegistrationProtocols.swift
//  UsersApp
//
//  Created by Yavuz Güner on 25.07.2022.
//

import Foundation

protocol ViewToPresenterUserRegistrationProtocol {
    var userRegistrationInteracor:PresenterToInteractorUserRegistrationProtocol? {get set}
    
    func Add(kisi_ad:String,kisi_tel:String)
}

protocol PresenterToInteractorUserRegistrationProtocol {
    func userAdd(kisi_ad:String,kisi_tel:String)
}

protocol PresenterToRouterUserRegistrationProtocol {
    static func createModule(ref:UserRegistrationVC)
}
