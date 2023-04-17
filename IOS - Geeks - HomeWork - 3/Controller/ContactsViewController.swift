//
//  ContactsViewController.swift
//  IOS - Geeks - HomeWork - 3
//
//  Created by MacBook Pro on 17/4/23.
//

import UIKit

class ContactsViewController: UIViewController {
    
    @IBOutlet weak var contactsTableView: UITableView!
    private var contactsList: [Contact] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
        initData()
    }
    
    private func initUI() {
        contactsTableView.dataSource = self
        contactsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    private func initData() {
        contactsList = [Contact(name: "Steve Jobs", image: "Jobs", number: "(996)701-122-121"),
                        Contact(name: "Elon Musk", image: "Musk", number: "(996)702-222-222"),
                        Contact(name: "Mark Zuckerberg", image: "Mark", number: "(996)703-322-323"),
                        Contact(name: "Bill Gates", image: "Bill", number: "(996)704-422-424"),
                        Contact(name: "Jeff Bezos", image: "Jeff", number: "(996)705-522-525"),
                        Contact(name: "Richard Branson", image: "Richard", number: "(996)706-622-626"),
                        Contact(name: "Larry Page", image: "Larry", number: "(996)707-722-727"),
                        Contact(name: "Bernard Arnault", image: "Bernard", number: "(996)708-822-828"),
                        Contact(name: "Warren Buffett", image: "Warren", number: "(996)709-922-929"),
                        Contact(name: "Tim Cook", image: "Tim", number: "(996)701-102-101"),
                        Contact(name: "Sundar Pichai", image: "Sundar", number: "(996)702-202-202"),
                        Contact(name: "Jack Ma", image: "Jack", number: "(996)703-303-303"),
                        Contact(name: "Sergey Brin", image: "Sergey", number: "(996)704-404-404"),
                        Contact(name: "Larry Ellison", image: "Larry 1", number: "(996)705-505-505"),
                        Contact(name: "Steve Ballmer", image: "Steve", number: "(996)706-606-606"),
                        Contact(name: "Mukesh Ambani", image: "Mukesh", number: "(996)707-707-707"),
                        Contact(name: "Gautam Adani", image: "Adani", number: "(996)708-208-808"),
                        Contact(name: "Mike Bloomberg", image: "Mike", number: "(996)709-902-902"),
                        Contact(name: "Robson Walton", image: "Robson", number: "(996)702-302-212"),
                        Contact(name: "Changpeng Zhao", image: "Zhao", number: "(996)706-502-212"),
        ]
    }

}

extension ContactsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = contactsList[indexPath.row].name
        cell.imageView?.image = UIImage(named: contactsList[indexPath.row].image)
        cell.detailTextLabel?.text = contactsList[indexPath.row].number
        cell.detailTextLabel?.textColor = #colorLiteral(red: 0.5411761403, green: 0.5411767364, blue: 0.5540798306, alpha: 1)
        return cell
    }
    
    
}
