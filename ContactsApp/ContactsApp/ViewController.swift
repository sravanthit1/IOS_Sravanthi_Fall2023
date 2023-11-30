//
//  ViewController.swift
//  ContactsApp
//
//  Created by Sravanthi Thukivakam on 11/29/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ContactTableOL.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row].Name
        return cell
    }
    

    var contacts=contacts_Array
    @IBOutlet weak var ContactTableOL: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Contacts"
        ContactTableOL.dataSource = self;
        ContactTableOL.delegate = self;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "contactSegue" {
                    let destination = segue.destination as! ContactViewController
            destination.Name = contacts[(ContactTableOL.indexPathForSelectedRow?.row)!].Name
            destination.Mobile = contacts[(ContactTableOL.indexPathForSelectedRow?.row)!].phoneNumber
            destination.Email = contacts[(ContactTableOL.indexPathForSelectedRow?.row)!].emailAddress
            destination.Img = contacts[(ContactTableOL.indexPathForSelectedRow?.row)!].image
        }
    }


}

