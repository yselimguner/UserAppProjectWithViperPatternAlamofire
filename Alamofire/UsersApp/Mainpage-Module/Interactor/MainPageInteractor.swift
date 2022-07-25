//
//  MainPageInteractor.swift
//  UsersApp
//
//  Created by Yavuz Güner on 25.07.2022.
//

import Foundation
import Alamofire

class MainPageInteractor:PresenterToInteractorMainPageProtocol{

    var mainPagePresenter: InteractorToPresenterMainPageProtocol?
    
    func takeAllUsers() {
        
        AF.request("http://kasimadalan.pe.hu/kisiler/tum_kisiler.php", method: .get).response { response in
            if let data = response.data {
                do {
                    let answer = try JSONDecoder().decode(UserResponse.self, from: data)
                    if let list = answer.kisiler {
                        self.mainPagePresenter?.sendDataToPresenter(usersList: list)
                    }
                }catch {
                    print(error.localizedDescription)
                }
            }
        }
        
    }
    
    func searchUser(searchWord: String) {
        let params : Parameters = ["kisi_ad":searchWord]
        AF.request("http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php", method: .post, parameters: params).response { response in
            if let data = response.data {
                do {
                    let answer = try JSONDecoder().decode(UserResponse.self, from: data)
                    if let list = answer.kisiler {
                        self.mainPagePresenter?.sendDataToPresenter(usersList: list)
                    }
                }catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func deleteUser(kisi_id: String) {
        let params : Parameters = ["kisi_id":kisi_id]
        AF.request("http://kasimadalan.pe.hu/kisiler/delete_kisiler.php", method: .post, parameters: params).response { response in
            if let data = response.data {
                do {
                    let answer = try JSONSerialization.jsonObject(with: data)
                    print(answer)
                    self.takeAllUsers()
                    
                }catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    
    
    
}
