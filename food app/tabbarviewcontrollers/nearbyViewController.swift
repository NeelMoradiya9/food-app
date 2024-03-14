//
//  nearbyViewController.swift
//  food app
//
//  Created by Neel  on 05/12/23.
//

import UIKit

class nearbyViewController: UIViewController,UITableViewDelegate , UITableViewDataSource  {
    @IBOutlet weak var cartbtn: UIButton!
    
    var imagearr =  [UIImage(named: "burger"),UIImage(named: "donut"),UIImage(named: "manchurian"),UIImage(named: "milkshake"),UIImage(named: "onion ring"),UIImage(named: "pizza"),UIImage(named: "subway"),UIImage(named: "taco")]
    var name = ["McDonald's","Super Donuts","Trishiv Chinese","Bismillah Juice Center","Taste of Bhagwati","Dominos","Subway","Taco bell"]
    var rating = ["3.5","4.5","3","4.5","2","4","2.5","2"]
    var web = ["https://www.google.com/maps/dir//Ground+floor,+school,+Laxmi+enclave,+2,+near+Gajera+Road,+Rajanand+Society,+Ram+Nagar+Society,+Katargam,+Surat,+Gujarat+395004/@21.2319109,72.754052,12z/data=!3m1!4b1!4m8!4m7!1m0!1m5!1m1!1s0x3be04f334780aaf5:0xdbc284948160baa4!2m2!1d72.8364537!2d21.2319309?entry=ttu","https://www.google.com/maps?s=web&rlz=1C5CHFA_enIN1042IN1042&lqi=ChJkb251dCBzaG9wIG5lYXIgbWUiA5ABAUjp87OMoa-AgAhaLBAAEAEYABgBGAIYAyISZG9udXQgc2hvcCBuZWFyIG1lKgQIAxAAKgQIFBABkgEGYmFrZXJ5qgFUCggvbS8wank0axABKg4iCmRvbnV0IHNob3AoADIeEAEiGjZ1wVYUOHNbgLrVRVmOx3jXWQCdpuswrU9IMhYQAiISZG9udXQgc2hvcCBuZWFyIG1lugEHCgVkb251dA&vet=12ahUKEwjwoMTZhP-CAxUNUGwGHX6hDAMQ1YkKegQIChAM..i&cs=1&um=1&ie=UTF-8&fb=1&gl=in&sa=X&geocode=Kfn4n4R1T-A7MS3JUNizNVDF&daddr=5RVV%2B53G,+Jay+Prakash+Narayan+Marg,+Begampura+Dudhara+Sheri,+Moti+Begumwadi,+New+Textile+Market,+Surat,+Gujarat+395002","https://www.google.com/maps?s=web&rlz=1C5CHFA_enIN1042IN1042&lqi=Chh0cmlzaGl2IGNoaW5lc2UgdmFyYWNoaGFIseyKu6i2gIAIWiQQABABGAAYARgCIhh0cmlzaGl2IGNoaW5lc2UgdmFyYWNoaGGSAQpyZXN0YXVyYW50mgEjQ2haRFNVaE5NRzluUzBWSlEwRm5TVU5TT1RZM04wOTNFQUWqAVYQASoTIg90cmlzaGl2IGNoaW5lc2UoADIfEAEiG8HLNiIWkjuW0pj0GoT9EAsaLtr280CMaR6nLzIcEAIiGHRyaXNoaXYgY2hpbmVzZSB2YXJhY2hoYQ&phdesc=6iM2UOG2jGI&vet=12ahUKEwiRkrbohP-CAxXfbmwGHWq7DK0Q1YkKegQIERAB..i&cs=1&um=1&ie=UTF-8&fb=1&gl=in&sa=X&geocode=KTsM4fPAT-A7MVbUxkC5OVyM&daddr=Police+Station,+Shop+no.+5,18/E+Gokul+Diamond+Center,+Varachha,+Surat,+Gujarat+395006","https://www.google.com/maps/dir//7%2F124-125,+Opp,+Railway+Station+Rd,+Sufi+Baug,+Railway+Station+Area,+Varachha,+Surat,+Gujarat+395003/@21.2045643,72.7574889,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x3be04ef9d8ef0507:0x35345ee754a10100!2m2!1d72.8398906!2d21.2045843?entry=ttu","https://www.google.com/maps/dir//Ring+Rd,+near+Sakar+Textile+House,+Sahara+Darwaja,+Moti+Begumwadi,+Begampura,+Surat,+Gujarat+395002/@21.1934289,72.7614327,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x3be04e51122fed17:0x289f94c60da5ee0e!2m2!1d72.8438344!2d21.1934489?entry=ttu","https://www.google.com/maps?s=web&rlz=1C5CHFA_enIN1042IN1042&lqi=Cg9kb21pbm9zIG5lYXIgbWUiBogBAZABAUiRgd2lyoKAgAhaHxAAGAAYARgCIg9kb21pbm9zIG5lYXIgbWUqBAgCEACSARBwaXp6YV9yZXN0YXVyYW50qgFEEAEqCyIHZG9taW5vcygAMh4QASIaMABSezM_Jwmvp2ZWJKp-oWam7_G_UkHxqkYyExACIg9kb21pbm9zIG5lYXIgbWU&vet=12ahUKEwixhsKXhf-CAxXrcGwGHfvxD2gQ1YkKegQIERAB..i&cs=1&um=1&ie=UTF-8&fb=1&gl=in&sa=X&geocode=KaNYnTMST-A7MS8-rl5t473k&daddr=Shop+No.+1,2,+Ground+Floor,+Adithya+Chambers,+Varachha+Main+Rd,+near+Pankaj+Diamond,+Surat,+Gujarat+395006","https://www.google.com/maps?s=web&rlz=1C5CHFA_enIN1042IN1042&lqi=Cg5zdWJ3YXkgbmVhciBtZSIGiAEBkAEBSMvKl9abrYCACFoeEAAYABgBGAIiDnN1YndheSBuZWFyIG1lKgQIAhAAkgEUZmFzdF9mb29kX3Jlc3RhdXJhbnSqAUIQASoKIgZzdWJ3YXkoADIeEAEiGp_afpgYk1irqeDIs8VeTcBdRu0h6EemIL47MhIQAiIOc3Vid2F5IG5lYXIgbWU&vet=12ahUKEwjPltqlhf-CAxXySWwGHa0QBEkQ1YkKegQIExAB..i&cs=1&um=1&ie=UTF-8&fb=1&gl=in&sa=X&geocode=Kdl7jabST-A7MbHVnodtjhSX&daddr=Zircon,+behind+Ankur+School+opp.+Avalon+Business+Hub+Aamba+Talavadi,+Gajera+Rd,+2/3,+Katargam,+Surat,+Gujarat+395004","https://www.google.com/maps/dir/21.2199024,72.8519936/Taco+Bell,+8%2F9,+International+Business+Center,+Dumas+Rd,+Piplod,+Surat,+Gujarat+395007/@21.1890772,72.7273491,12z/data=!3m1!4b1!4m17!1m7!3m6!1s0x3be04dbb9270a513:0xa702ff5c90141545!2sTaco+Bell!8m2!3d21.1578155!4d72.7690321!16s%2Fg%2F11t6r3mhks!4m8!1m1!4e1!1m5!1m1!1s0x3be04dbb9270a513:0xa702ff5c90141545!2m2!1d72.7690321!2d21.1578155?entry=ttu"]
    
    

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagearr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath ) 
        as! nearbyTableViewCell
        cell.imagev.image = imagearr[indexPath.row]
        cell.imagev.layer.cornerRadius = 5
        cell.namelabels.text = name[indexPath.row]
        cell.ratinglabel.text = rating[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 210
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigation(link: web[indexPath.row])
        print(web[indexPath.row])
    }
    func navigation(link : String){
        let a  = storyboard?.instantiateViewController(identifier: "WebnearbyViewController")as!
        WebnearbyViewController
        a.webv = link
        navigationController?.pushViewController(a, animated: true)
    }

    @IBAction func cartbtnact(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(identifier: "mycartViewController") as! mycartViewController
        navigationController?.pushViewController(navigate, animated: true)
    }
}
