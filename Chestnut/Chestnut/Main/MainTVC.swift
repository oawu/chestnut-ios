//
//  MainVCTableViewController.swift
//  Chestnut
//
//  Created by 吳政賢 on 2018/6/7.
//  Copyright © 2018年 吳政賢. All rights reserved.
//

import UIKit

class CustomTitleView: UIView {
    
    override var intrinsicContentSize: CGSize {
        return UILayoutFittingExpandedSize
    }
}
class MainTVC: UITableViewController, MainCellDelegate {
    
//    let loading = UIAlertController (title: nil, message: "讀取中..", preferredStyle: .alert)

    var loading: UIAlertController! = nil;
    var datas: [String] = [];
    
    func showLoading() {

        if loading == nil {
            self.loading = UIAlertController (title: nil, message: "讀取中..", preferredStyle: .alert)
    
            let indicator = UIActivityIndicatorView(activityIndicatorStyle: .gray)
            indicator.center = CGPoint(x: 25, y: 30)
            indicator.isUserInteractionEnabled = false
            indicator.startAnimating()
            self.loading.view.addSubview(indicator)
        }

        self.present (self.loading, animated: true, completion: nil)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear (animated)
        
        self.showLoading ();
        datas.append("111");
        datas.append("222");
        datas.append("333");
        datas.append("444");
        datas.append("555");
        
        self.tableView.reloadData();
        
        self.loading.dismiss(animated: true, completion: nil);
        
    }
    @objc func add () {
        self.present (UINavigationController (rootViewController: PicPickerVC ()), animated: true, completion: nil);
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "栗子"
        self.navigationController?.navigationBar.barTintColor = UIColor(red:0.42, green:0.61, blue:0.47, alpha:1.0)
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black
        self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "createVC"), style: .plain, target: self, action: #selector(add))
        self.navigationItem.rightBarButtonItem?.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0);
        
        
        
//            [[ alloc] initWithFrame:titleView.bounds];
        
//        UITextField
//        let v = UIView ();
//        v.backgroundColor = #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)
//        self.navigationController?.navigationBar.insertSubview(<#T##view: UIView##UIView#>, aboveSubview: <#T##UIView#>)
        
//        self.navigationItem.titleView = CustomTitleView()
//        self.navigationItem.titleView?.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
//
//        if let titleView = self.navigationItem.titleView {
//            print("~~~~~~~");
////            let search = UILabel ();
////            search.backgroundColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
////            search.translatesAutoresizingMaskIntoConstraints = false;
//
////            titleView.addSubview(search);
////            titleView.addConstraint(NSLayoutConstraint(item: search, attribute: .centerX, relatedBy: .equal, toItem: titleView, attribute: .centerX, multiplier: 1, constant: 1))
////            titleView.addConstraint(NSLayoutConstraint(item: search, attribute: .centerY, relatedBy: .equal, toItem: titleView, attribute: .centerY, multiplier: 1, constant: 1))
//
////            titleView.addConstraint(NSLayoutConstraint(item: search, attribute: .left, relatedBy: .equal, toItem: titleView, attribute: .left, multiplier: 1, constant: 0))
////            titleView.addConstraint(NSLayoutConstraint(item: search, attribute: .top, relatedBy: .equal, toItem: titleView, attribute: .top, multiplier: 1, constant: 0))
////            titleView.addConstraint(NSLayoutConstraint(item: search, attribute: .right, relatedBy: .equal, toItem: titleView, attribute: .right, multiplier: 1, constant: 0))
////            titleView.addConstraint(NSLayoutConstraint(item: search, attribute: .bottom, relatedBy: .equal, toItem: titleView, attribute: .bottom, multiplier: 1, constant: 0))
//
////            titleView.addConstraint(NSLayoutConstraint(item: search, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100))
////            titleView.addConstraint(NSLayoutConstraint(item: search, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 30))
//        }
//        self.navigationItem.titleView = search;
//        self.navigationItem.titleView?.backgroundColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        
//        self.tableView.separatorStyle = .none;
        self.view.backgroundColor = UIColor(red:0.94, green:0.96, blue:0.95, alpha:1.0)
        
        self.tableView.register (MainCell.self, forCellReuseIdentifier: "Cell")
        self.tableView.allowsSelection = false;
        

//        print(datas);
//        datas.append("111");
//        print(datas);
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.datas.count;
    }

    
    func showAddress(cell: MainCell) {
        guard (tableView.indexPath(for: cell)?.row) != nil else { return }
        
//        let mapVc = UIViewController();
//        mapVc.view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)

  
//        let right = UIBarButtonItem();
//        right.title = "關閉";
//        mapVc.navigationController?.navigationItem.rightBarButtonItem = right;
//        mapVc.navigationItem.rightBarButtonItem = UIBarButtonItem(
//            title:"設定" ,
//            style:.Plain ,
//            target:self ,
//            action: #selector(mapVc.close))
        
        
        
        self.present (UINavigationController (rootViewController: MainMapsVC ()), animated: true, completion: nil);

//        mapVc.root
        
//        let alert = UIAlertController(title: "title", message: "message",
//                                      preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "确定", style: .cancel))
//        let vc = ViewController();
////        vc.
//        self.present(vc, animated: true)
//        let vc = ViewController();
//        self.window?.rootViewController?.present(vc, animated: true, completion: nil)
//        self.parent?.present(vc, animated: true, completion: nil);
        
//        self.navigationController?.pushViewController(vc, animated: true);
//        self.presentedViewController = vc;
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        var cell = tableView.dequeueReusableCell(withIdentifier: "Cxx") as? MainCell
        
        if cell == nil {
            cell = MainCell.init(style: .default, reuseIdentifier: "Cxx");
            cell?.initUI (str: self.datas[indexPath.row]);
            cell?.delegate = self;
        }
        
        return cell!;
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 136;
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
