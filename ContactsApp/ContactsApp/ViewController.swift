//
//  ViewController.swift
//  ContactsApp
//
//  Created by Sravanthi Thukivakam on 11/29/23.
//

import UIKit

import Foundation

class ContactL {
    var image: String
    var Name: String
    var phoneNumber: String
    var emailAddress: String

    // Optional: You can add other properties like address, birthday, etc.

    
    init(image: String, Name: String, phoneNumber: String, emailAddress: String) {
        self.image = image
        self.Name = Name
        self.phoneNumber = phoneNumber
        self.emailAddress = emailAddress
    }
}


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ContactTableOL.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row].Name
        return cell
    }
    
    var contacts: [ContactL] = []
    //var contacts=contacts_Array
    
    @IBOutlet weak var ContactTableOL: UITableView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Contacts"
        ContactTableOL.dataSource = self;
        ContactTableOL.delegate = self;
        
        let p1 = ContactL(image: "img1", Name: "Sravanthi", phoneNumber: "6605281455", emailAddress: "sthukivakam@gmail.com")
        let p2 = ContactL(image: "img2", Name: "Rohith", phoneNumber: "6605281455", emailAddress: "sthukivakam@gmail.com")
        let p3 = ContactL(image: "img3", Name: "Asritha", phoneNumber: "6605281455", emailAddress: "sthukivakam@gmail.com")
        let p4 = ContactL(image: "img4", Name: "Hemanth", phoneNumber: "6605281455", emailAddress: "sthukivakam@gmail.com")
       
        contacts = [p1, p2, p3, p4]
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

