//
//  DownloadListViewController.swift
//  AriaX
//
//  Created by zakariyyasv on 2018/8/8.
//  Copyright © 2018年 iiiCeBlink. All rights reserved.
//

import Cocoa

class DownloadListViewController: NSViewController {

	// MARK: UI Properties
	private lazy var tableView: NSTableView = {
		let tableView = NSTableView()
		tableView.dataSource = self
		tableView.delegate = self as? NSTableViewDelegate
		return tableView
	}()

	// MARK: Life Cycle
	override func viewDidLoad() {
		super.viewDidLoad()

		self.view.addSubview(self.tableView)
	}

}

extension DownloadListViewController: NSTableViewDataSource {

	func numberOfRows(in tableView: NSTableView) -> Int {
		return 1
	}

}

extension DownloadListViewController: NSTabViewDelegate {

	func tabView(_ tabView: NSTabView, shouldSelect tabViewItem: NSTabViewItem?) -> Bool {
		return true
	}
}
