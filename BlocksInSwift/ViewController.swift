//
//  ViewController.swift
//  BlocksInSwift
//
//  Created by Sriram Prasad on 05/11/18.
//  Copyright © 2018 FullStackNet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        onSuccess(value: true, success: {
            print("Print true value")
        }) {
            print("print Failure value")
        }

        onSuccess(value: false, success: {
            print("failur")
        }) {
            print("Success")
        }
        
        json(flag: true, onSucces: {
            print("suesss")
        }) {
            print("Failure")
        }
        json(flag: false, onSucces: {
            print("suesss")
        }) {
            print("Failure")
        }
        
    }
    func onSuccess(value:Bool,success: () -> Void,failure: () -> Void) {
        
        if value{

                success()
        }
        else {
            failure()
            
        }
    }

    func json( flag: Bool,onSucces: () -> Void, onFailue : () -> Void) {
        if flag {
                onSucces()

        }
        else {
                onFailue()
        }
    }
    
    
}

