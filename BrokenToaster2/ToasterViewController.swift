//
//  ToasterViewController.swift
//  BrokenToaster2
//
//  Created by Emily Kolar on 12/19/16.
//  Copyright © 2016 Emily Kolar. All rights reserved.
//

import UIKit

class ToasterViewController: UIViewController {
	
	
	//---------------------------
	// MARK: properties
	//---------------------------
	
	// a toaster
	var toaster: Toaster!
	
	// this data will be given to our toaster view controller from elsewhere
	// set it to a blank string for now, so if the user enters nothing, we don't crash
	var userName: String = ""
	
	// data we'll get from user, is set it to a default value of 0
	var numberOfToastsRequested: Int!
	
	// ui objects
	@IBOutlet weak var outputView: UITextView!
	@IBOutlet weak var userInput: UITextField!
	@IBOutlet weak var greetingLabel: UILabel!
	
	//---------------------------
	// MARK: lifecycle functions
	//---------------------------
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// greet the user
		greetingLabel.text = "Hi \(userName)!"
		
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
	
	//---------------------------
	// MARK: actions (sent by storyboard objects)
	//---------------------------
	@IBAction func donePressed(_ sender: Any) {

		let outputString = toaster.makeToast(numberOfToasts: numberOfToastsRequested)
		numberOfToastsRequested = Int(userInput.text!)!
		outputView.text = outputString
		
	}
	
	
}
