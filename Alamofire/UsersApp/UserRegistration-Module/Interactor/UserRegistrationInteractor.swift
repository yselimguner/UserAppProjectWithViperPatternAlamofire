//
//  UserRegistrationInteractor.swift
//  UsersApp
//
//  Created by Yavuz Güner on 25.07.2022.
//

import Foundation
import Alamofire

class UserRegistrationInteractor:PresenterToInteractorUserRegistrationProtocol {
    func userAdd(kisi_ad: String, kisi_tel: String) {
        let params : Parameters = ["kisi_ad":kisi_ad, "kisi_tel":kisi_tel]
        AF.request("http://kasimadalan.pe.hu/kisiler/insert_kisiler.php", method: .post, parameters: params).response { response in
            if let data = response.data {
                do {
                    let answer = try JSONSerialization.jsonObject(with: data)
                    print(answer)                    
                }catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
}
