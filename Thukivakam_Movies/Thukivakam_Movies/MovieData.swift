//
//  MovieData.swift
//  Thukivakam_Movies
//
//  Created by Sravanthi Thukivakam on 11/18/23.
//

import Foundation
import UIKit

struct Movie{
    var title:String
    var image:UIImage
    var releasedYear:String
    var movieRating:String
    var boxOffice:String
    var moviePlot:String
    var cast:[String]
}

struct Genre{
    var category:String
    var movies:[Movie]
}

let domains = ["Action", "Romance", "Thriller"]
let domains_Array = [Actionn, Romancee, Thrillerr]

let Actionn = Genre(category: domains[0], movies: [Movie(title: "Jailer", image: #imageLiteral(resourceName: "img1.jpeg"), releasedYear: "2023", movieRating: "7.1", boxOffice: "6.5 billion INR", moviePlot: "A retired jailer goes on a manhunt to find his son's killers. But the road leads him to a familiar, albeit a bit darker place. Can he emerge from this complex situation successfully?", cast: ["Rajinikanth", "Mohanlal", "Ramya Krishnan", "Jackie Shroff"]),
                                                   
    Movie(title: "RRR", image: #imageLiteral(resourceName: "img2.jpeg"), releasedYear: "2022", movieRating: "7.9", boxOffice: "5.5 billion INR", moviePlot: "A fictitious story about two legendary revolutionaries and their journey away from home before they started fighting for their country in the 1920s.", cast: ["N.T.Rama Rao Jr", "Ram Charan", "Ajay Devgn", "Alia Bhatt"]),
                                                   
    Movie(title: "Pathaan", image: #imageLiteral(resourceName: "img3.jpeg"), releasedYear: "2023", movieRating: "5.9", boxOffice: "₹1,050 crore", moviePlot: "An Indian agent races against a doomsday clock as a ruthless mercenary, with a bitter vendetta, mounts an apocalyptic attack against the country.", cast: ["Shah Rukh Khan", "Deepika Padukone", "John Abraham", "Dimple Kapadia"]),
                                                   
    Movie(title: "Major", image: #imageLiteral(resourceName: "img4.jpeg"), releasedYear: "2022", movieRating: "8.1", boxOffice: "₹66 crore", moviePlot: "The life of Maj. Sandeep Unnikrishnan, who fought against terrorists and was killed in action during the 2008 attacks at the Taj Palace Hotel in Mumbai, India.", cast: ["Adivi Sesh", "Saiee Manjrekar", "Sobhita Dhulipala", "Pradeep Chilukuri"]),
                                                   
    Movie(title: "NH10", image: #imageLiteral(resourceName: "img5.jpeg"), releasedYear: "2015", movieRating: "7.2", boxOffice: "₹32 crore", moviePlot: "On their way to a weekend retreat, a married couple find their dream vacation turn into a nightmare when they cross paths with a dangerous gang.", cast: ["Anushka Sharma", "Neil Bhoopalam", "Darshan Kumaar", "Deepti Naval"])
])

let Romancee = Genre(category: domains[1], movies: [Movie(title: "Yeh Jawaani Hai Deewani", image: #imageLiteral(resourceName: "img6.jpeg"), releasedYear: "2013", movieRating: "7.2", boxOffice: "3.196 billion INR", moviePlot: "A young medical student falls in love with a man who plans to travel the world and never settle down, or get married.", cast: ["Ranbir Kapoor","Deepika Padukone","Kalki Koechlin","Aditya Roy Kapoor"]),
                                                   
   Movie(title: "Jab We Met", image: #imageLiteral(resourceName: "img7.jpeg"), releasedYear: "2007", movieRating: "7.9", boxOffice: "509 million INR", moviePlot: "A depressed wealthy businessman finds his life changing after he meets a spunky and care-free young woman.", cast: ["Shahid Kapoor","Kareena Kapoor","Tarun Arora","Pawan Malhotra"]),
                                                    
   Movie(title: "Ae Dil Hai Mushkil", image: #imageLiteral(resourceName: "img8.jpeg"), releasedYear: "2016", movieRating: "5.8", boxOffice: "2.397 billion INR", moviePlot: "This story explores love - the shapes it takes, the ways it changes us and the exhilarating and often terrifying ride it takes us on.", cast: ["Ranbir Kapoor","Aishwarya Rai Bachchan","Anushka Sharma","Fawad Khan"]),
                                                    
   Movie(title: "Ram-Leela", image: #imageLiteral(resourceName: "img9.jpeg"), releasedYear: "2013", movieRating: "6.4", boxOffice: "2.014 billion INR", moviePlot: "Ram and Leela love each other but cannot stay together as their families, Rajadi and Sanera, have been at war with each other for the past 500 years", cast: ["Ranveer Singh","Deepika Padukone"]),
                                                    
   Movie(title: "Aashiqui 2", image: #imageLiteral(resourceName: "img10.jpeg"), releasedYear: "2013", movieRating: "7", boxOffice: "₹109 crore", moviePlot: "Rahul, a singing sensation, falls in love with Aarohi, a girl who sings in the bar.", cast: ["Aditya Roy Kapoor","Shraddha Kapoor","Mahesh Thakur"])
])

let Thrillerr = Genre(category: domains[2], movies: [Movie(title: "Freddy", image: #imageLiteral(resourceName: "img11.jpeg"), releasedYear: "2022", movieRating: "7.4", boxOffice: "$165.9 million", moviePlot: "The lines between love and obsession blur in this romantic thriller packed with unpredictable twists and sharp turns.", cast: ["Karthik Aaryan","Alaya F","Karan Pandit"]),
                                                   
   Movie(title: "King of Kotha", image: #imageLiteral(resourceName: "img12.jpeg"), releasedYear: "2023", movieRating: "6.1", boxOffice: "₹38.30 crore", moviePlot: "In a crime-infested town, Kannan bhai and his gang are the reigning powers. To combat this reign and seek revenge, Inspector Shahul tactfully plots the return of the 'King', leading to a transformative turn of events.", cast: ["Dulquer Salmaan","Aishwarya Lekshmi","Anikha Surendran","Ritika Singh"]),
                                                    
   Movie(title: "Hotel Mumbai", image: #imageLiteral(resourceName: "img13.jpeg"), releasedYear: "2019", movieRating: "7.6", boxOffice: "21.1 million USD", moviePlot: "The true story of the Taj Hotel terrorist attack in Mumbai.", cast: ["Dev Patel","Armie Hammer","Nazanin Boniadi"]),
                                                    
   Movie(title: "Khufiya", image: #imageLiteral(resourceName: "img14.jpeg"), releasedYear: "2023", movieRating: "6", boxOffice: "₹20 crore", moviePlot: "Krishna Mehra is an operative at Indian spy agency known as R&AW", cast: ["Tabu","Ali Fazal","Wamiqa Gabbi"]),
                                                    
   Movie(title: "Badla", image: #imageLiteral(resourceName: "img15.jpeg"), releasedYear: "2019", movieRating: "7.8", boxOffice: "₹1.385 billion", moviePlot: "A dynamic young entrepreneur finds herself locked in a hotel room with the corpse of her dead lover.", cast: ["Amitabh Bachchan","Taapsee Pannu","Amrita Singh"])
])




