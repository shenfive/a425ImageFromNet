//
//  ViewController.swift
//  a425ImageFromNet
//
//  Created by 申潤五 on 2021/5/9.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var theImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("1:\(Date().timeIntervalSince1970)")
        let urlString = "https://lh3.googleusercontent.com/proxy/7N25TmqlhnQvdpklusX3SmyRC1MKL3eUkmPMo-51Bz19qk4lmkHLqEX10BxKu6Z7pI07COtNuBkCGdrLvzYnhaSByUJeHdU"
        let url = URL(string: urlString)!
        DispatchQueue.global().async {
            do {
                let imageData = try Data(contentsOf: url)
                
                DispatchQueue.main.async {
                    self.theImageView.image = UIImage(data: imageData)
                    print("2:\(Date().timeIntervalSince1970)")
                }
            } catch {
                print(error.localizedDescription)
            }
        }
        
        print("3:\(Date().timeIntervalSince1970)")
        
        
    }


}

