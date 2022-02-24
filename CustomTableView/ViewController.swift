//
//  ViewController.swift
//  CustomTableView
//
//  Created by muhammad hassan on 23/02/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let ArrayNew = ["Pakistan","People","Private","Food","Do not","Eats","Because","They","Are","Pakistani"]
    let Imags = ["mir","mir2","mir3","mir4","mir5","mir2","mir3","mir4","mir5","mir"]
    @IBOutlet weak var TableViews: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        TableViews.dataSource = self
        TableViews.delegate = self

         }

    // MARK: - Table view data source

     func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ArrayNew.count
    }

   
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellCustom", for: indexPath) as! CellCustom
        cell.lblName.text = ArrayNew[indexPath.row]
         cell.ImageShow.image = UIImage(named: Imags[indexPath.row])
        return cell
    }



}
