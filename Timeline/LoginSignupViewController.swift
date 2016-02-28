//
//  LoginSignupViewController.swift
//  Timeline
//
//  Created by Retika Kumar on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class LoginSignupViewController: UIViewController {
    enum ViewMode {
        
        case Login
        case Signup
        case Edit
        
    }
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var bioTextField: UITextField!
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var actionButton: UIButton!
    
    var viewMode = ViewMode.Signup
    var fieldsAreValid: Bool {
        get {
            switch viewMode {
            case .Login:
                return !(emailTextField.text!.isEmpty || passwordTextField.text!.isEmpty)
            case .Signup:
                return !(emailTextField.text!.isEmpty || passwordTextField.text!.isEmpty || usernameTextField.text!.isEmpty)
            case .Edit:
                return !(usernameTextField.text!.isEmpty)
                
            }
        }
    }
        
    var user: User?
        
override func viewDidLoad() {
    super.viewDidLoad()
    
    
    
    // Do any additional setup after loading the view.
}
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        updateViewBasedOnMode()

    }

override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}

func updateViewBasedOnMode () {
    switch viewMode {
    case .Login:
        usernameTextField.hidden = true
        bioTextField.hidden = true
        urlTextField.hidden = true
        actionButton.setTitle("Login", forState: .Normal)
    case .Signup:
        actionButton.setTitle("Signup", forState: .Normal)
    case .Edit:
        actionButton.setTitle("Edit", forState: .Normal)
        
        emailTextField.hidden = true
        passwordTextField.hidden = true
        
        if let user = self.user {
            usernameTextField.text = user.username
            bioTextField.text = user.bio
            urlTextField.text = user.url
            
        }
        
    }
    
}
    func updatWithUser(user:User) {
        self.user = user
        viewMode = .Edit
    }
    
    

    @IBAction func actionButtonTapped(sender: AnyObject) {
        if fieldsAreValid {
            switch viewMode {
            case .Login:
                UserController.authenticateUser(emailTextField.text!, password: passwordTextField.text!, completion: { (success, user) -> Void in
                    if success, let _ = user {
                        
                    }
                })
                
                
                
            }
        }
        
        
    }
}



