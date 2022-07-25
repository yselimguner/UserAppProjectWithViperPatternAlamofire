//
//  UserDetailProtocols.swift
//  UsersApp
//
//  Created by Yavuz Güner on 25.07.2022.
//

import Foundation

protocol ViewToPresenterUserDetailProtocol {
    var userDetailInteracor:PresenterToInteractorUserDetailProtocol? {get set}
    
    func update(kisi_id:Int,kisi_ad:String,kisi_tel:String)
}

protocol PresenterToInteractorUserDetailProtocol {
    func userUpdate(kisi_id:Int,kisi_ad:String,kisi_tel:String)
}

protocol PresenterToRouterUserDetailProtocol {
    static func createModule(ref:UserDetailVC)
}
