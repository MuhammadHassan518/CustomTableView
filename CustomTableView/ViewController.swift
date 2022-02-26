//
//  ViewController.swift
//  CustomTableView
//
//  Created by Muhammad Hassan on 23/02/2022.
//


// Note Custom TableView with Static Header and Footer and passing data from one view to other view..
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

    // Table view data source

    func numberOfSections(in tableView: UITableView) -> Int { 1 }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { 120 }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { ArrayNew.count }

   
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellCustom", for: indexPath) as! CellCustom
        cell.lblName.text = ArrayNew[indexPath.row]
        cell.ImageShow.image = UIImage(named: Imags[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = UIView()
        HeaderView.backgroundColor = .green
        let HeaderTitle = UILabel(frame: CGRect(x: 10, y: 10, width: TableViews.frame.size.width, height: 20))
        HeaderTitle.text = "Hi You Welcome"
        HeaderTitle.textAlignment = .center
        HeaderView.addSubview(HeaderTitle)
        return HeaderView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat { 40 }
   
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let Footer = UIView()
        Footer.backgroundColor = UIColor.green
        let titleLabel = UILabel(frame: CGRect(x:10,y: 5 ,width:350,height:30))
        titleLabel.textColor = .blue
        titleLabel.textAlignment = .right
        titleLabel.text  = "@ Hi I am Muhammad Hassan"
        Footer.addSubview(titleLabel)
        return Footer
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat { 40 }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        let second = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondView
        self.navigationController?.pushViewController(second, animated: true)
        
        second.StrLabel = ArrayNew[indexPath.row]
        second.StrImage = Imags[indexPath.row]
        }
    
}

// I will be thankfull to you if you suggest me some thingd i forget to do.




