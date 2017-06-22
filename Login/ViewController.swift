import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var pwdText: UITextField!
    @IBOutlet weak var messageLbl: UILabel!

    
    
    
    @IBAction func loginBtn(_ sender: UIButton) {
        
        //public self.emailText.resignFirstResponder()
        self.pwdText.resignFirstResponder()
        
        
        if self.emailText.text == "chamal@flatorb.com" && self.pwdText.text == "Abc@1234"{
            
            
            
            
            performSegue(withIdentifier: "logout", sender: nil);
        }else{
            
            
            let alertController = UIAlertController(title: "Login failed", message: "Check your cardinalities", preferredStyle: .alert)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { action in
                // ...
            }
            let OKAction = UIAlertAction(title: "OK", style: .default) { action in
                // ...
            }
            
            alertController.addAction(OKAction)
            
            self.present(alertController, animated: true) {
                // ...
            }
            
        }
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }


}

