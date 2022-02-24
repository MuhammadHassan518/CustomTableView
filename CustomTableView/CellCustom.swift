//
//  CellCustom.swift
//  CustomTableView
//
//  Created by muhammad hassan on 24/02/2022.
//

import UIKit

class CellCustom: UITableViewCell {

    @IBOutlet weak var ImageShow: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
