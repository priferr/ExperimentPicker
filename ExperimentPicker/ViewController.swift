//
//  ViewController.swift
//  ExperimentPicker
//
//  Created by Priscilla Cosi on 13/07/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func experiment(_ sender: UIButton) {
    let nextController = UIImagePickerController()
        self.present(nextController, animated: true, completion: nil)
    }
    
    @IBAction func experimentActivity(_ sender: Any) {

        let image = UIImage()
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func experimentAlert(_ sender: Any) {

        let controller = UIAlertController()
            controller.title = "Test Alert"
            controller.message = "This is a test"

        let okAction = UIAlertAction(title: "ok", style: UIAlertAction.Style.default) { action in self.dismiss(animated: true, completion: nil)
            }

            controller.addAction(okAction)
            self.present(controller, animated: true, completion: nil)
        }


}

