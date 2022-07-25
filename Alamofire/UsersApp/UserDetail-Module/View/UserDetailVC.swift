//
//  UserDetailVC.swift
//  UsersApp
//
//  Created by Yavuz Güner on 24.07.2022.
//

import UIKit

class UserDetailVC: UIViewController {

    @IBOutlet weak var textFieldUserPhone: UITextField!
    @IBOutlet weak var textFieldUserName: UITextField!
    
    var user:Users?
    
    var userDetailPresenterObject:ViewToPresenterUserDetailProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let u = user {
            textFieldUserName.text = u.kisi_ad
            textFieldUserPhone.text = u.kisi_tel
        }

        UserDetailRouter.createModule(ref: self)
    }
    
    @IBAction func buttonUpdateClicked(_ sender: Any) {
        if let uN = textFieldUserName.text, let uP = textFieldUserPhone.text, let u = user {
            userDetailPresenterObject?.update(kisi_id: Int(u.kisi_id!)!, kisi_ad: u.kisi_ad!, kisi_tel: u.kisi_tel!)
        }
    }
    

}
