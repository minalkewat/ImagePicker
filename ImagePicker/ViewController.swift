//
//  ViewController.swift
//  ImagePicker
//
//  Created by Meenal Kewat on 3/1/19.
//  Copyright © 2019 Happykrafts Innovations. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imagePicker = UIImagePickerController()

    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }


    @IBAction func onPickAction(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        present(imagePicker, animated: true, completion: nil)
    }
}


// Wring Extention increase the readablity of code
extension ViewController: UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
            img.image = image
        }
        dismiss(animated: true, completion: nil)
    }
}

