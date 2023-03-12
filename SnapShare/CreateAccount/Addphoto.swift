//
//  Addphoto.swift
//  SnapShare
//
//  Created by Jo on 28/12/22.
//

import UIKit

class Addphoto: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    
    @IBOutlet var btnnxt: UIButton!
    
    @IBOutlet var imgprofile: UIImageView!
    
    @IBOutlet var imgaddgallery: UIImageView!
    
    
    var imgconvert : Data!
    
    var photo = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photo.delegate = self
        imgprofile.layer.cornerRadius = imgprofile.frame.size.width / 2
    }
    
    
    @IBAction func btnimgpicker(_ sender: UIButton) {
        
        photo.sourceType = .photoLibrary
        present(photo, animated: true)
        
    }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let picker = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        {  imgprofile.image = picker
            imgconvert = picker.pngData()
        }
        dismiss(animated: true)
    }
    
 
    

    @IBAction func btnNxt(_ sender: UIButton) {
        
        UserDefaults.standard.set(imgconvert, forKey: "UDimg")
        
        let navg = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Age") as! Age
        
        self.navigationController?.pushViewController(navg, animated: true)
    }
    
    @IBAction func btnskip(_ sender: UIButton) {
        let navg = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Age") as! Age
        
        self.navigationController?.pushViewController(navg, animated: true)
    }
    
}

