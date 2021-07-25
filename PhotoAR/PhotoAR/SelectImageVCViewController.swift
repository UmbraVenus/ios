//
//  SelectImageVCViewController.swift
//  PhotoAR
//
//  Created by Sage Ren  on 7/24/21.
//

import UIKit

class SelectImageVC: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    var imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func selectImageBtnPressed(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
            imagePicker.delegate = self
            imagePicker.sourceType = .savedPhotosAlbum
            imagePicker.allowsEditing = false
            present(imagePicker, animated: true, completion: nil)
        }
    }

    // MARK: ImagePicker Delegate Methods
    
    // Called when a user selects an image from their photo library.
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        // If the user selected an image media type...
        if let image = info[.originalImage] as? UIImage {
            imageView.image = image
            self.dismiss(animated: true, completion: nil)
        }
        else {
            print("User did not select an image media type.")
            self.dismiss(animated: true, completion: nil)
        }
    }

    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let arViewController = segue.destination as? ViewController {
            arViewController.image = imageView.image
        }
    }
}

