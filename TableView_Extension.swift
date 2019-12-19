//*********Example 1 *************

extension UITableView {

    func setEmptyMessage(_ message: String) {
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        messageLabel.text = message
        messageLabel.textColor = .black
        messageLabel.numberOfLines = 0
        messageLabel.textAlignment = .center
        messageLabel.font = UIFont(name: "TrebuchetMS", size: 15)
        messageLabel.sizeToFit()

        self.backgroundView = messageLabel
        self.separatorStyle = .none
    }

    func restore() {
        self.backgroundView = nil
        self.separatorStyle = .singleLine
    }
}

//usage

override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if things.count == 0 {
        self.tableView.setEmptyMessage("My Message")
    } else {
        self.tableView.restore()
    }

    return things.count
}






//*********Example 2  *************

extension UITableView{
    
    class func EmptyMessage(message:String, viewController:UITableViewController) {
        let rect = CGRect(origin: CGPoint(x: 0,y :0), size: CGSize(width: self.view.bounds.size.width, height: self.view.bounds.size.height))
        let messageLabel = UILabel(frame: rect)
        messageLabel.text = message
        messageLabel.textColor = UIColor.blackColor()
        messageLabel.numberOfLines = 0;
        messageLabel.textAlignment = .Center;
        messageLabel.font = UIFont(name: "TrebuchetMS", size: 15)
        messageLabel.sizeToFit()

        viewController.tableView.backgroundView = messageLabel;
        viewController.tableView.separatorStyle = .None;
    }
}

//In your UITableViewController you can call this in numberOfSectionsInTableView(tableView: UITableView) -> Int
override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    if projects.count > 0 {
        return 1
    } else {
        self.mainTableView.EmptyMessage("You don't have any projects yet.\nYou can create up to 10.", viewController: self)
        return 0
    }
}