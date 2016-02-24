//
//  ListViewController.swift
//  CleanTodo
//
//  Created by Daniel Tartaglia on 2/21/16.
//  Copyright © 2016 Daniel Tartaglia. All rights reserved.
//

import UIKit
import PromiseKit


class ListViewController: UIViewController, Promisable {
	
	@IBOutlet weak var noContentView: UIView!
	@IBOutlet weak var tableView: UITableView!
	
	var dataStore: DataStore!
	
	@IBAction func addAction(sender: AnyObject) {
		appStore.dispatch(AddAction.TapAddButton)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		noContentView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
	}
	
	override func viewDidAppear(animated: Bool) {
		super.viewDidAppear(animated)
		
		noContentView.frame = tableView.frame
		view.addSubview(noContentView)
	}
	
	var promise: AnyObject {
		return Promise<Void>()
	}
}
