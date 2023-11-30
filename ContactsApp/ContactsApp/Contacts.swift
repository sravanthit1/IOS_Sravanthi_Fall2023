//
//  Contacts.swift
//  ContactsApp
//
//  Created by Sravanthi Thukivakam on 11/29/23.
//

import Foundation
import UIKit

struct Contact {
    var image: String
    var Name: String
    var phoneNumber: String
    var emailAddress: String
}

let contacts_Array = [person1, person2, person3, person4,person5,person6]

let person1 = Contact(image:"img1", Name: "Sravanthi Thukivakam", phoneNumber: "6605281455", emailAddress: "sravanthit@gmail.com")

let person2 = Contact(image:"img2", Name: "Asritha Oruganti", phoneNumber: "5505281455", emailAddress: "asrt0291@gmail.com")

let person3 = Contact(image:"img3", Name: "Rohith Poreddy", phoneNumber: "3305281455", emailAddress: "poredyyroh56@gmail.com")

let person4 = Contact(image:"img4", Name: "Hemanth Bonthu", phoneNumber: "2205281455", emailAddress: "hembon54@gmail.com")

let person5 = Contact(image: "img4", Name: "Hruthik Varma", phoneNumber: "7705281455", emailAddress: "hrvama76@gmail.com")

let person6 = Contact(image: "img1", Name: "Kartheek Yellamachili", phoneNumber: "1005281455", emailAddress: "karthe789@gmail.com")

