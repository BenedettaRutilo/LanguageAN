//
//  DetailViewController.swift
//  Dictionary
//
//  Created by Benedetta Rutilo on 31/05/2019.
//  Copyright © 2019 Benedetta Rutilo. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
   @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var partofspeechLabel: UILabel!
    @IBOutlet weak var meaningLabel: UILabel!
    
    var word: Word? {
        didSet {
            refreshUI()
        }
    }
    
    func refreshUI() {
        loadViewIfNeeded()
        nameLabel.text = word?.name
        meaningLabel.text = word?.meaning
        
    }
}

extension DetailViewController: WordSelectionDelegate {
    func wordSelected(_ newWord: Word) {
        word = newWord
    }
}


        

        // Do any additional setup after loading the view.
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


