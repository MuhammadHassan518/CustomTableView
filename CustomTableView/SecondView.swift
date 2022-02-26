//
//  SecondView.swift
//  CustomTableView
//
//  Created by muhammad hassan on 26/02/2022.
//

import UIKit

class SecondView: UIViewController {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var ImageV: UIImageView!
    
    
    var StrLabel: String!
    var StrImage: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblName.text = StrLabel
        ImageV.image = UIImage(named: StrImage)

    }
    


}
