//
//  ViewController.swift
//  CustomSectionAlphabet
//
//  Created by Jorge Gomez on 2018-03-25.
//  Copyright © 2018 codeByMe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AlphabetDelegate {
  
  @IBOutlet weak var tableView: UITableView!
  @IBOutlet weak var alphabetView: AlphabetView!
  var alphabet = Dictionary<String,Any>()
  var lettersArray = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
  override func viewDidLoad() {
    super.viewDidLoad()
    //addAlphabet()
    alphabetView.delegate = self
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
    let headerView = UINib(nibName: "HeaderView", bundle: nil)
    tableView.register(headerView, forHeaderFooterViewReuseIdentifier: "headerViewId")
    
    alphabet["A"] = ["Alemania","Argentina"]
    alphabet["B"] = ["Bolivia","Bulgaria","Brasil"]
    alphabet["C"] = ["Colombia","Chile","China"]
    alphabet["D"] = ["Dinamarca"]
    alphabet["E"] = ["Ecuador"]
    alphabet["F"] = ["Finlandia","Francia"]
    alphabet["G"] = ["Germany"]
    alphabet["H"] = ["Holland","TEST"]
    alphabet["I"] = ["Test","Test","Test"]
    alphabet["J"] = ["Test","Test","Test"]
    alphabet["K"] = ["Test","Test","Test"]
    alphabet["L"] = ["Test","Test","Test"]
    alphabet["M"] = ["Test","Test","Test"]
    alphabet["N"] = ["Test","Test","Test"]
    alphabet["O"] = ["Test","Test","Test"]
    alphabet["P"] = ["Test","Test","Test"]
    alphabet["Q"] = ["Test","Test","Test"]
    alphabet["R"] = ["Test","Test","Test"]
    alphabet["S"] = ["Test","Test","Test"]
    alphabet["T"] = ["Test","Test","Test"]
    alphabet["U"] = ["Test","Test","Test"]
    alphabet["V"] = ["Test","Test","Test"]
    alphabet["W"] = ["Test","Test","Test"]
    alphabet["X"] = ["Test","Test","Test"]
    alphabet["Y"] = ["Test","Test","Test"]
    alphabet["Z"] = ["Test","Test","Test"]

  
  }


  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return alphabet.count
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    let currentLetterArray = alphabet[lettersArray[section]] as! [String]
    return currentLetterArray.count
  }
  

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
    let currentLetterArray = alphabet[lettersArray[indexPath.section]] as! [String]
    let countryForLetter = currentLetterArray[indexPath.row]
    cell.textLabel?.text = countryForLetter
    return cell
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableViewAutomaticDimension
  }
  
  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "headerViewId") as! HeaderView
    let letter = lettersArray[section]
    header.headerLbl.text = letter
    return header
  }
  
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    return 30
  }
  
  func jumpToSection(index: Int){
    let indexPathSelected = IndexPath(row: 0, section: index)
    tableView.scrollToRow(at: indexPathSelected, at: .top, animated: true)
  }
  
  
  
  


}

